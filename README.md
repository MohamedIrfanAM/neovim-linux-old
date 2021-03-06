# My Neovim config

### Not in lua

### Forked from @ChristianChiarulli

![NVCode pic](./utils/images/nvim.png)
![Neovim pic](./utils/images/Neovim.png)

- Mac

  ```
  brew install --HEAD neovim # Nightly version

  brew upgrade neovim --fetch-HEAD # Sometimes you need to update
  ```

- Ubuntu

  ```
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage -o /tmp/nvim.appimage

  sudo mv /tmp/nvim.appimage /usr/local/bin/nvim

  chmod +x /usr/local/bin/nvim
  ```

- Arch

  ```
  yay -S neovim-git # Latest
  ```

## Clone this repo into your config

```
git clone https://github.com/MohamedIrfanAM/neovim-linux.git ~/.config/nvim
```

## Install python & node support

```
pip install pynvim
```

```
npm i -g neovim
```

## Install Neovim remote

```
pip install neovim-remote
```

This will install `nvr` to `~/.local/bin` so you will need to add the following to your `bashrc` or `zshrc`

```
export PATH=$HOME/.local/bin:$PATH
```

## Install clipboard support

- On Mac pbcopy should be builtin

- Ubuntu

  ```
  sudo apt install xsel
  ```

- Arch

  ```
  sudo pacman -S xsel
  ```

## (Optional) Install python & node support using virtual environments

Make sure to add these paths somewhere in your config

```
let g:python3_host_prog = expand("<path to python with pynvim installed>")
let g:python3_host_prog = expand("~/.miniconda/envs/neovim/bin/python3.8") " <- example

let g:node_host_prog = expand("<path to node with neovim installed>")
let g:node_host_prog = expand("~/.nvm/versions/node/v12.16.1/bin/neovim-node-host") " <- example
```

## List of programs you should install

- ranger
- ueberzug
- ripgrep
- silver_searcher
- fd
- universal-ctags
- lazy git
- lazy docker

Explanations and installation instruction can be found on my blog

## Language Servers

Since CoC doesn't support all languages in there extensions
I recommend installing some language servers from scratch
and adding them to your `coc-settings.json` file

Example:

- bash

  `npm i -g bash-language-server`

  ```
  "languageserver": {
  "bash": {
    "command": "bash-language-server",
    "args": ["start"],
    "filetypes": ["sh"],
    "ignoredRootPaths": ["~"]
    }
  }
  ```

## For FAR to work

```
:UpdateRemotePlugins
```

To replace in file make sure to specify `%:p`
To replace across project specify `**/*.<your_extension>`

## TabNine

To use TabNine enter the following in a buffer:

```
TabNine::config
```

**NOTE** This extension can take up a ton of memory

## Vim Gists

To use **vim-gists** you will need to configure the following:

```
git config --global github.user <username>
```

## VSCodium & Neo Vim Extension

[VSCodium](https://github.com/VSCodium/vscodium) contains build files to generate free release binaries of Microsoft's VS Code.

You can install it on multiple platforms:

- Mac

  ```
  brew cask install vscodium
  ```

- Arch

  ```
  yay -s vscodium-bin
  ```

- Snap

  ```
  snap install codium
  ```

[The Neo Vim Extension](https://github.com/asvetliakov/vscode-neovim) is available in the VSCode marketplace

I recommend using this alongside the VSCode `which-key` extension

Along with some of my config files you can find in `utils/vscode_config`
