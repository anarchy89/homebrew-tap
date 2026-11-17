# Homebrew tap for csshm

[csshm](https://github.com/anarchy89/csshm) is cluster SSH for macOS Terminal.

    brew tap anarchy89/tap
    brew trust anarchy89/tap
    brew install csshm

`brew trust` is needed on Homebrew 7 and later, which does not load formulae
from a tap until you say you trust it. On older versions, leave that line out.

Homebrew builds csshm from source, so Xcode must be installed.

To update: `brew upgrade csshm`. To remove: `brew uninstall csshm`.
