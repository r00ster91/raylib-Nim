[Nim](https://nim-lang.org) bindings for [raylib](http://raylib.com) version 2.0.

# Usage
You must use raylib as a shared library.

- On Windows you need `libraylib_shared.dll`.
- On Linux you need `libraylib.so`.
- On Mac OS X you need `libraylib.dylib`.

These shared librarys can be gotten from https://github.com/raysan5/raylib/releases.

Your source file must share the same location as the shared library.

# Notes
- Desktop only for now (no iOS, Android or Web).
- There isn't a documentation yet but i'm working on it.
  For now you can use [this cheatsheet](http://www.raylib.com/cheatsheet/cheatsheet.html).