Forked from [tsoding/ded](https://github.com/tsoding/ded)

# Dramatic EDitor

**THIS SOFTWARE IS UNFINISHED!!! Don't have any high expectations.**

<br/>

### IMPORTANT NOTE

This _will_ crash on launch (that is, on Windows at least). Sometimes a little. Sometimes a lot. But eventually
it will open. The issue is apparently caused by the shaders randomly failing to compile, so it's probably caused
by _some_ kind of memory issue, but I have no idea what. I didn't write that part of the software anyway
and the guy who did uses Linux, so there's a chance it's a platform-dependent issue as well.

<br/>

# Quick Start

## Dependencies

- [SDL2 2.0.9+](https://www.libsdl.org/)
- [FreeType 2.13.0+](https://freetype.org/)
- [GLEW 2.1.0+](https://glew.sourceforge.net/)

## POSIX

```console
$ ./build.sh
$ ./ded src/main.c
```

## Windows MSVC

```console
> .\setup_dependencies.bat
> .\build_msvc.bat
> .\ded.exe src\main.c
```

# Fonts

- Victor Mono: https://rubjo.github.io/victor-mono/
- Iosevka: https://github.com/be5invis/Iosevka
