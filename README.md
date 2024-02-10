# LazyVim Config

Neovim configuration directory for setting up LazyVim. To install, clone this
repository to the local `.config` directory:

```sh
git clone https://github.com/sudorook/lazyvim.nvim.git ${HOME}/.config/nvim
```

The `master` branch is configured to run on system libraries alone, meaning
Mason is disallowed from automatically downloading and installing any programs.
This means that several dependencies are required to be installed beforehand.
See the `Install LazyVim` option in the
[archlinux](https://github.com/sudorook/archlinux) repository for an example for
Arch Linux.

The `debian` branch, instead, is configured to auto-install **all**
dependencies. Use this branch if dependency management through package managers
is undesired. (This branch is named such because Debian does not ship many of
the dependencies, including a recent version of Neovim itself, so local
downloads are simply necessary.)

```sh
git clone --branch debian https://github.com/sudorook/lazyvim.nvim.git ${HOME}/.config/nvim
```
