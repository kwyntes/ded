@echo off
rem launch this from msvc-enabled console

set CFLAGS=/W4 /std:c11 /wd4996 /wd5105 /wd4100 /FC /TC /Zi /nologo
set INCLUDES=/I dependencies\SDL2\include /I dependencies\GLFW\include /I dependencies\GLEW\include /I dependencies\freetype2\include /I dependencies\minirent
set LIBS=dependencies\SDL2\lib\x64\SDL2.lib ^
         dependencies\SDL2\lib\x64\SDL2main.lib ^
         dependencies\GLFW\lib\glfw3.lib ^
         dependencies\GLEW\lib\glew32s.lib ^
		     dependencies\freetype2\lib\freetype.lib ^
         opengl32.lib User32.lib Gdi32.lib Shell32.lib ^
         dwmapi.lib

set subsystem=windows
if %1==/C set subsystem=console

echo Compiling for subsystem %subsystem%

cl.exe %CFLAGS% %INCLUDES% /Feded src\main.c src\la.c src\editor.c src\file_browser.c src\free_glyph.c src\simple_renderer.c src\common.c src\lexer.c /link %LIBS% -SUBSYSTEM:%subsystem%
