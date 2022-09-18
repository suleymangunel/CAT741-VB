// ------------------------------------------------- //
//                   WinIo v1.2                      //
//  Direct Hardware Access Under Windows 9x/NT/2000  //
//        Copyright 1998-2000 Yariv Kaplan           //
//           http://www.internals.com                //
// ------------------------------------------------- //

#include <ntddk.h>
#include "winio.h"

#define OutputDebugString

// Function definition section
// -----------------------------------------------------------------
NTSTATUS WinIoDispatch(IN PDEVICE_OBJECT DeviceObject, IN PIRP Irp);
void WinIoUnload(IN PDRIVER_OBJECT DriverObject);
NTSTATUS UnmapPhysicalMemory(HANDLE PhysicalMemoryHandle, PVOID pPhysMemLin);
NTSTATUS MapPhysicalMemoryToLinearSpace(PVOID *ppPhysAddress,
                                        ULONG PhysMemSizeInBytes,
                                        PVOID *ppPhysMemLin,
                                        HANDLE *pPhysicalMemoryHandle);
// -----------------------------------------------------------------

// Installable driver initialization entry point.
// This entry point is called directly by the I/O system.

NTSTATUS DriverEntry (IN PDRIVER_OBJECT DriverObject,
                      IN PUNICODE_STRING RegistryPath)
{
  UNICODE_STRING  DeviceNameUnicodeString;
  UNICODE_STRING  DeviceLinkUnicodeString;
  NTSTATUS        ntStatus;
  PDEVICE_OBJECT  DeviceObject = NULL;

  OutputDebugString ("Entering DriverEntry");

  RtlInitUnicodeString (&DeviceNameUnicodeString, L"\\Device\\WinIo");

  // Create an EXCLUSIVE device object (only 1 thread at a time
  // can make requests to this device).

  ntStatus = IoCreateDevice (DriverObject,
                             0,
                             &DeviceNameUnicodeString,
                             FILE_DEVICE_WINIO,
                             0,
                             TRUE,
                             &DeviceObject);
	
  if (NT_SUCCESS(ntStatus))
  {
    // Create dispatch points for device control, create, close.

    DriverObject->MajorFunction[IRP_MJ_CREATE]         =
    DriverObject->MajorFunction[IRP_MJ_CLOSE]          =
    DriverObject->MajorFunction[IRP_MJ_DEVICE_CONTROL] = WinIoDispatch;
    DriverObject->DriverUnload                         = WinIoUnload;

    // Create a symbolic link, e.g. a name that a Win32 app can specify
    // to open the device.

    RtlInitUnicodeString (&DeviceLinkUnicodeString, L"\\DosDevices\\WinIo");

    ntStatus = IoCreateSymbolicLink (&DeviceLinkUnicodeString,
                                     &DeviceNameUnicodeString);

    if (!NT_SUCCESS(ntStatus))
    {
      // Symbolic link creation failed- note this & then delete the
      // device object (it's useless if a Win32 app can't get at it).

      OutputDebugString ("ERROR: IoCreateSymbolicLink failed");

      IoDeleteDevice (DeviceObject);
    }

  }
  else
  {
    OutputDebugString ("ERROR: IoCreateDevice failed");
  }

  OutputDebugString ("Leaving DriverEntry");

  return ntStatus;
}


// Process the IRPs sent to this device

NTSTATUS WinIoDispatch(IN PDEVICE_OBJECT DeviceObject,
                       IN PIRP Irp)
{
  PIO_STACK_LOCATION IrpStack;
  ULONG              dwInputBufferLength;
  ULONG              dwOutputBufferLength;
  ULONG              dwIoControlCode;
  PVOID              pvIOBuffer;
  NTSTATUS           ntStatus;
  struct             tagPort32Struct Port32Struct;
  struct             tagPhys32Struct Phys32Struct;

  OutputDebugString ("Entering WinIoDispatch");

  // Init to default settings

  Irp->IoStatus.Status      = STATUS_SUCCESS;
  Irp->IoStatus.Information = 0;
  
  IrpStack = IoGetCurrentIrpStackLocation(Irp);

  // Get the pointer to the input/output buffer and it's length

  pvIOBuffer           = Irp->AssociatedIrp.SystemBuffer;
  dwInputBufferLength  = IrpStack->Parameters.DeviceIoControl.InputBufferLength;
  dwOutputBufferLength = IrpStack->Parameters.DeviceIoControl.OutputBufferLength;

  switch (IrpStack->MajorFunction)
  {
    case IRP_MJ_CREATE:

      OutputDebugString("IRP_MJ_CREATE");

    break;

    case IRP_MJ_CLOSE:

      OutputDebugString("IRP_MJ_CLOSE");

    break;

    case IRP_MJ_DEVICE_CONTROL:

      OutputDebugString("IRP_MJ_DEVICE_CONTROL");

      dwIoControlCode = IrpStack->Parameters.DeviceIoControl.IoControlCode;

      switch (dwIoControlCode)
      {
        case IOCTL_WINIO_MAPPHYSTOLIN:

          OutputDebugString("IOCTL_WINIO_MAPPHYSTOLIN");

          if (dwInputBufferLength)
          {
            memcpy (&Phys32Struct, pvIOBuffer, dwInputBufferLength);

            ntStatus = MapPhysicalMemoryToLinearSpace(&Phys32Struct.pvPhysAddress,
                                                      Phys32Struct.dwPhysMemSizeInBytes,
                                                      &Phys32Struct.pvPhysMemLin,
                                                      &Phys32Struct.PhysicalMemoryHandle);

            if (NT_SUCCESS(ntStatus))
            {
              memcpy (pvIOBuffer, &Phys32Struct, dwInputBufferLength);
              Irp->IoStatus.Information = dwInputBufferLength;
            }

            Irp->IoStatus.Status = ntStatus;
          }
          else
            Irp->IoStatus.Status = STATUS_INVALID_PARAMETER;

        break;

        case IOCTL_WINIO_UNMAPPHYSADDR:

          OutputDebugString("IOCTL_WINIO_UNMAPPHYSADDR");

          if (dwInputBufferLength)
          {
            memcpy (&Phys32Struct, pvIOBuffer, dwInputBufferLength);

            ntStatus = UnmapPhysicalMemory(Phys32Struct.PhysicalMemoryHandle, Phys32Struct.pvPhysMemLin);

            Irp->IoStatus.Status = ntStatus;
          }
          else
            Irp->IoStatus.Status = STATUS_INVALID_PARAMETER;

        break;

        case IOCTL_WINIO_WRITEPORT:

          OutputDebugString("IOCTL_WINIO_WRITEPORT");

          if (dwInputBufferLength)
          {
            memcpy (&Port32Struct, pvIOBuffer, dwInputBufferLength);

            switch (Port32Struct.bSize)
            {
              case 1:
                WRITE_PORT_UCHAR(Port32Struct.wPortAddr, (UCHAR)Port32Struct.dwPortVal);
              break;

              case 2:
                WRITE_PORT_USHORT(Port32Struct.wPortAddr, (USHORT)Port32Struct.dwPortVal);
              break;

              case 4:
                WRITE_PORT_ULONG(Port32Struct.wPortAddr, Port32Struct.dwPortVal);
              break;
            }
          }
          else
            Irp->IoStatus.Status = STATUS_INVALID_PARAMETER;

        break;

        case IOCTL_WINIO_READPORT:

          OutputDebugString("IOCTL_WINIO_READPORT");

          if (dwInputBufferLength)
          {
            memcpy (&Port32Struct, pvIOBuffer, dwInputBufferLength);

            switch (Port32Struct.bSize)
            {
              case 1:
                Port32Struct.dwPortVal = (ULONG)READ_PORT_UCHAR(Port32Struct.wPortAddr);
              break;

              case 2:
                Port32Struct.dwPortVal = (ULONG)READ_PORT_USHORT(Port32Struct.wPortAddr);
              break;

              case 4:
                Port32Struct.dwPortVal = READ_PORT_ULONG(Port32Struct.wPortAddr);
              break;
            }

            memcpy (pvIOBuffer, &Port32Struct, dwInputBufferLength);
            Irp->IoStatus.Information = dwInputBufferLength;
          }
          else
            Irp->IoStatus.Status = STATUS_INVALID_PARAMETER;

        break;
 
        default:

          OutputDebugString("ERROR: Unknown IRP_MJ_DEVICE_CONTROL");

          Irp->IoStatus.Status = STATUS_INVALID_PARAMETER;

        break;
      }

    break;
  }

  // DON'T get cute and try to use the status field of the irp in the
  // return status.  That IRP IS GONE as soon as you call IoCompleteRequest.

  ntStatus = Irp->IoStatus.Status;

  IoCompleteRequest (Irp, IO_NO_INCREMENT);

  // We never have pending operation so always return the status code.

  OutputDebugString("Leaving WinIoDispatch");

  return ntStatus;
}

// Delete the associated device and return

void WinIoUnload(IN PDRIVER_OBJECT DriverObject)
{
  UNICODE_STRING DeviceLinkUnicodeString;
  NTSTATUS ntStatus;

  OutputDebugString ("Entering WinIoUnload");

  RtlInitUnicodeString (&DeviceLinkUnicodeString, L"\\DosDevices\\WinIo");
  
  ntStatus = IoDeleteSymbolicLink (&DeviceLinkUnicodeString);

  if (NT_SUCCESS(ntStatus))
  {
    IoDeleteDevice (DriverObject->DeviceObject);
  }
  else
  {
    OutputDebugString ("ERROR: IoDeleteSymbolicLink");
  }

  OutputDebugString ("Leaving WinIoUnload");
}


NTSTATUS MapPhysicalMemoryToLinearSpace(PVOID *ppPhysAddress,
                                        ULONG PhysMemSizeInBytes,
                                        PVOID *ppPhysMemLin,
                                        HANDLE *pPhysicalMemoryHandle)
{
  UNICODE_STRING     PhysicalMemoryUnicodeString;
  PVOID              PhysicalMemorySection = NULL;
  OBJECT_ATTRIBUTES  ObjectAttributes;
  PHYSICAL_ADDRESS   ViewBase;
  NTSTATUS           ntStatus;

  OutputDebugString ("Entering MapPhysicalMemoryToLinearSpace");

  RtlInitUnicodeString (&PhysicalMemoryUnicodeString,
                        L"\\Device\\PhysicalMemory");

  InitializeObjectAttributes (&ObjectAttributes,
                              &PhysicalMemoryUnicodeString,
                              OBJ_CASE_INSENSITIVE,
                              (HANDLE) NULL,
                              (PSECURITY_DESCRIPTOR) NULL);

  *pPhysicalMemoryHandle = NULL;

  ntStatus = ZwOpenSection (pPhysicalMemoryHandle,
                            SECTION_ALL_ACCESS,
                            &ObjectAttributes);

  if (NT_SUCCESS(ntStatus))
  {

    ntStatus = ObReferenceObjectByHandle (*pPhysicalMemoryHandle,
                                          SECTION_ALL_ACCESS,
                                          (POBJECT_TYPE) NULL,
                                          KernelMode,
                                          &PhysicalMemorySection,
                                          (POBJECT_HANDLE_INFORMATION) NULL);

    // Let ZwMapViewOfSection pick a linear address

    *ppPhysMemLin = NULL;

    ViewBase.QuadPart = (ULONGLONG)*ppPhysAddress;

    ntStatus = ZwMapViewOfSection (*pPhysicalMemoryHandle,
                                   (HANDLE) -1,
                                   ppPhysMemLin,
                                   0L,
                                   PhysMemSizeInBytes,
                                   &ViewBase,
                                   &PhysMemSizeInBytes,
                                   ViewShare,
                                   0,
                                   PAGE_READWRITE | PAGE_NOCACHE);

    if (!NT_SUCCESS(ntStatus))
      OutputDebugString ("ERROR: ZwMapViewOfSection failed");
  }
  else
    OutputDebugString ("ERROR: ZwOpenSection failed");

  *ppPhysAddress = (PVOID)ViewBase.LowPart;

  OutputDebugString ("Leaving MapPhysicalMemoryToLinearSpace");

  return ntStatus;
}


NTSTATUS UnmapPhysicalMemory(HANDLE PhysicalMemoryHandle, PVOID pPhysMemLin)
{
  NTSTATUS ntStatus;

  OutputDebugString ("Entering UnmapPhysicalMemory");

  ntStatus = ZwUnmapViewOfSection((HANDLE)-1, pPhysMemLin);

  if (!NT_SUCCESS(ntStatus))
    OutputDebugString ("ERROR: UnmapViewOfSection failed");

  ZwClose(PhysicalMemoryHandle);

  OutputDebugString ("Leaving UnmapPhysicalMemory");

  return ntStatus;
}
