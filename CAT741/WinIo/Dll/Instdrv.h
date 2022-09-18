#ifndef INSTDRV_H
#define INSTDRV_H

BOOL LoadDeviceDriver( const TCHAR * Name, const TCHAR * Path, HANDLE * lphDevice );
BOOL UnloadDeviceDriver( const TCHAR * Name );

#endif
