@ECHO OFF
REM set the build memory model (currently large)
SET MEMMODEL=/ml
REM change to the source directory
CD SRC
REM build textdraw library
DEL /Q ..\LIB\SMALL\TEXTDRAW.LIB >NUL
DEL /Q ..\LIB\MEDIUM\TEXTDRAW.LIB >NUL
DEL /Q ..\LIB\LARGE\TEXTDRAW.LIB >NUL
DEL /Q ..\LIB\HUGE\TEXTDRAW.LIB >NUL
DEL /Q ..\LIB\COMPACT\TEXTDRAW.LIB >NUL
ECHO ********************* Building TEXTDRAW.LIB (compact) *************************
WCC TEXTDRAW.C /zq /mc /i..\include
WLIB TEXTDRAW +TEXTDRAW /q
MOVE TEXTDRAW.LIB ..\LIB\COMPACT >NUL
ECHO ********************* Building TEXTDRAW.LIB (small) *************************
WCC TEXTDRAW.C /zq /ms /i..\include
WLIB TEXTDRAW +TEXTDRAW /q
MOVE TEXTDRAW.LIB ..\LIB\SMALL >NUL
ECHO ********************* Building TEXTDRAW.LIB (medium) *************************
WCC TEXTDRAW.C /zq /mm /i..\include
WLIB TEXTDRAW +TEXTDRAW /q
MOVE TEXTDRAW.LIB ..\LIB\MEDIUM >NUL
ECHO ********************* Building TEXTDRAW.LIB (large) *************************
WCC TEXTDRAW.C /zq /ml /i..\include
WLIB TEXTDRAW +TEXTDRAW /q
MOVE TEXTDRAW.LIB ..\LIB\LARGE >NUL
ECHO ********************* Building TEXTDRAW.LIB (huge) *************************
WCC TEXTDRAW.C /zq /mh /i..\include
WLIB TEXTDRAW +TEXTDRAW /q
MOVE TEXTDRAW.LIB ..\LIB\HUGE >NUL
DEL /Q TEXTDRAW.OBJ >NUL
CD ..
