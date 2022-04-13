# activate-redhat
The "Activate Windows" watermark ported to Linux with Xlib and cairo in C. Forked from MrGlockenspiel's [activate-linux](https://github.com/MrGlockenspiel/activate-linux).

## Dependencies (Linux)
This project depends on:
- `libcairo2-dev`
- `libxi-dev`
- `libx11-dev`
- `x11proto-core-dev`
- `x11proto-dev`
- `libxt-dev`
- `libxfiles-dev`
- `libxinerama`

## Building
```
make
./bin/activate_redhat
```

## Example Image:

![screenshot](screenshot.png)
