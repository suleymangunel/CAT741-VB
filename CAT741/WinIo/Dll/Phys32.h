#ifndef PHYS32_H
#define PHYS32_H

#ifdef WINIO_DLL
#define PHYS32API _declspec(dllexport)
#else
#define PHYS32API _declspec(dllimport)
#endif

extern "C"
{
  PHYS32API PBYTE _stdcall MapPhysToLin(PBYTE pbPhysAddr, DWORD dwPhysSize);
  PHYS32API bool _stdcall GetPhysLong(PBYTE pbPhysAddr, PDWORD pdwPhysVal);
  PHYS32API bool _stdcall SetPhysLong(PBYTE pbPhysAddr, DWORD dwPhysVal);
}

#endif