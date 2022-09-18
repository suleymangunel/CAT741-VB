------------------------------------------------------------
                        WinIo v1.2                          
    Direct Hardware Access Under Windows 9x/NT/2000         
            Copyright 1998-2000 Yariv Kaplan                
                http://www.internals.com                    
------------------------------------------------------------

The WinIo library allows 32-bit Windows applications to directly
access I/O ports and physical memory. It bypasses Windows protection
mechanisms by using a combination of a kernel-mode device driver and
several low-level programming techniques.

Under Windows NT, the WinIo library can only be used by applications
that have administrative privileges. If the user is not logged on as
an administrator, the WinIo DLL is unable to install and activate the
WinIo driver. It is possible to overcome this limitation by installing
the driver once through an administrative account. In that case, however,
the ShutdownWinIo function must not be called before the application
is terminated, since this function removes the WinIo driver from the
system's registry.

The library exports 8 functions:

----------------------------------------------------------------------------

bool _stdcall InitializeWinIo();

This function initializes the WinIo library.

For applications running under Windows NT/2000, this function
must be called before calling any other function in the library.

Windows 9x applications are not required to call this function.

If the function succeeds, the return value is nonzero.

If the function fails, the return value is zero. 

----------------------------------------------------------------------------

void _stdcall ShutdownWinIo();

This function performs cleanup of the WinIo library.

For applications running under Windows NT/2000, this function
must be called before terminating the application or when the
WinIo library is no longer required.

Windows 9x applications are not required to call this function.

----------------------------------------------------------------------------

bool _stdcall GetPortVal(WORD wPortAddr, PDWORD pdwPortVal, BYTE bSize);

Use this function to read a BYTE/WORD/DWORD value from an I/O port.

Parameters:

  wPortAddr - I/O port address

  pdwPortVal - Pointer to a DWORD variable that receives the value
               obtained from the port.

  bSize - Number of bytes to read.
          Can be 1 (BYTE), 2 (WORD) or 4 (DWORD).

  If the function succeeds, the return value is nonzero.

  If the function fails, the return value is zero. 

----------------------------------------------------------------------------

bool _stdcall SetPortVal(WORD wPortAddr, DWORD dwPortVal, BYTE bSize);

Use this function to write a BYTE/WORD/DWORD value to an I/O port.

Parameters:

  wPortAddr - I/O port address

  dwPortVal - A DWORD value to be written to the port

  bSize - Number of bytes to write.
          Can be 1 (BYTE), 2 (WORD) or 4 (DWORD).

  If the function succeeds, the return value is nonzero.

  If the function fails, the return value is zero. 

----------------------------------------------------------------------------

PBYTE _stdcall MapPhysToLin(PBYTE pbPhysAddr, DWORD dwPhysSize, HANDLE *pPhysicalMemoryHandle)

Use this function to map a region of physical memory into the linear address 
space of a 32-bit Windows application.

Here is an example:

PBYTE pbLinAddr;
HANDLE PhysicalMemoryHandle;

pbLinAddr = MapPhysToLin(0xA0000, 65536, &PhysicalMemoryHandle);

The function will map physical addresses 0xA0000 - 0xAFFFF into the linear
address space of the application. The value returned is a linear address
corresponding to physical address 0xA0000. In case of an error, the return
value is NULL.

Parameters:

  pbPhysAddr - Pointer to the physical address
  
  dwPhysSize - Number of bytes to map

  pPhysicalMemoryHandle - Points to a variable that will receive the physical memory section
                          handle if this call is successful. This handle is later used as
                          the first parameter when calling the UnmapPhysicalMemory function.

----------------------------------------------------------------------------

bool _stdcall UnmapPhysicalMemory(HANDLE PhysicalMemoryHandle, PBYTE pbLinAddr)

Use this function to unmap a region of physical memory which was previously mapped
to the linear address space of the application using the MapPhysToLin function.

Windows 9x applications are not required to call this function.

Parameters:

  PhysicalMemoryHandle - Handle to the physical memory section which was returned
                         from the call to the MapPhysToLin function.

  pbLinAddr - Linear address which was returned from the call to the MapPhysToLin
              function.

----------------------------------------------------------------------------

bool _stdcall GetPhysLong(PBYTE pbPhysAddr, PDWORD pdwPhysVal);

This function reads one DWORD from the specified physical address.

Parametes:

  pbPhysAddr - Pointer to the physical address
  
  pdwPhysVal - Pointer to a DWORD variable that receives the value
               obtained from the physical memory location.

  If the function succeeds, the return value is nonzero.

  If the function fails, the return value is zero. 

----------------------------------------------------------------------------

bool _stdcall SetPhysLong(PBYTE pbPhysAddr, DWORD dwPhysVal);

This function writes one DWORD to the specified physical address.

Parametes:

  pbPhysAddr - Pointer to the physical address
  
  pdwPhysVal - Specifies a DWORD value to be written to the physical
               memory location.

  If the function succeeds, the return value is nonzero.

  If the function fails, the return value is zero. 

----------------------------------------------------------------------------
                          A NOTE FOR VB USERS
----------------------------------------------------------------------------

To use winio.dll with a 32-bit Visual-Basic application you need to:

1. Place winio.dll and winio.sys in the same directory as your executable file.

2. Add winio.bas to your project.

----------------------------------------------------------------------------
                              LEGAL STUFF             
----------------------------------------------------------------------------

The following terms apply to all files associated with the software
unless explicitly disclaimed in individual files.

The author hereby grants permission to use, copy, modify, distribute,
and license this software and its documentation for any purpose, provided
that existing copyright notices are retained in all copies and that this
notice is included verbatim in any distributions. No written agreement,
license, or royalty fee is required for any of the authorized uses.

IN NO EVENT SHALL THE AUTHOR OR DISTRIBUTORS BE LIABLE TO ANY PARTY
FOR DIRECT, INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES
ARISING OUT OF THE USE OF THIS SOFTWARE, ITS DOCUMENTATION, OR ANY
DERIVATIVES THEREOF, EVEN IF THE AUTHOR HAVE BEEN ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.

THE AUTHOR AND DISTRIBUTORS SPECIFICALLY DISCLAIM ANY WARRANTIES,
INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT. THIS SOFTWARE
IS PROVIDED ON AN "AS IS" BASIS, AND THE AUTHOR AND DISTRIBUTORS HAVE
NO OBLIGATION TO PROVIDE MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR
MODIFICATIONS.


I can be reached at: yariv@internals.com

Yariv Kaplan
