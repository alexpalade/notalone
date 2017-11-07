# NOTALONE

You wake up nowhere in the night. Hungry zombies around, but your ol' pal "BOOMSTICK" is with you.

SHOOT 'EM ALL!


## Controls
| Action  | Control |
|---------|---------|
| Shoot | Left mouse button |
| Run | WASD |
| Look around | Mouse cursor |

## Installation and running

Binaries available at [itch.io](https://borodust.itch.io/notalone#download) page.

You also can install it via `quicklisp`:

```lisp
(ql-dist:install-dist "http://bodge.borodust.org/dist/org.borodust.bodge.txt")

(ql:quickload :notalone)

(notalone:play-game)
```

## Requirements

* OpenGL 3.3+
* 64-bit (x86_64) Windows, GNU/Linux or macOS
* x86_64 SBCL or CCL


## Info

Made with [trivial-gamekit](https://github.com/borodust/trivial-gamekit)