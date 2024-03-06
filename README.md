# dos_libs
Assorted DOS-related graphics libraries 

The contents include:
- TEXTDRAW: A basic text mode drawing library.  Supports CGA, EGA, VGA text modes and very basic draw/erase operations.  I just want the ability to draw text on the screen without the overhead of curses/crt or some other terminal library
- CGAGFX: a C-based implementation of the 160x100 CGA graphics mode.  Currently sets the mode and plots pixels

Both of these libraries are built around Watcom C in real mode, and the binaries are built for each memory model (see the subdirectories of 'LIB' in each project for the outputs).  There's no (current) attempt to optimize since I'm currently just working on making the code *work*.