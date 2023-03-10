# dotfiles

## Supported OS

- Arch Linux (recommend)
- Ubuntu
- Fedora

## Install

1. Download

   ```bash
   git clone https://github.com/nozomu-karai/dotfiles.git
   cd dotfiles
   ```

1. Install

   ```bash
   ./install.sh
   ```

1. zsh plugin install

   ```bash
   exec zsh
   ```

1. neovim plugin install

   ```bash
   vi --headless -c 'Lazy! sync' -c 'qall'
   ```
   
   or

   ```bash
   nvim
   ```

1. Enjoy!

### Temporary Install

If you do not want to dirty your home directory

1. Download

   ```bash
   mkdir /tmp/tmphome
   cd /tmp/tmphome
   git clone https://github.com/nozomu-karai/dotfiles.git
   cd dotfiles
   ```

1. Set HOME environment temporary

   ```bash
   export HOME=/tmp/tmphome
   ```

1. Install

   ```bash
   ./install.sh
   ```

1. zsh plugin install

   ```bash
   exec zsh
   ```

1. neovim plugin install

   ```bash
   vi --headless -c 'Lazy! sync' -c 'qall'
   ```
   
    or

    ```bash
    nvim
    ```

### Docker Install

If you do not want to dirty system

1. Build Dockerfile and run container
   ```bash
   git clone https://github.com/nozomu-karai/dotfiles.git
   cd dotfiles
   docker build -t dotfiles .
   docker run --rm -it dotfiles
   ```
  

1. Download

   ```bash
   git clone https://github.com/nozomu-karai/dotfiles.git
   cd dotfiles
   ```

1. Install

   ```bash
   ./install.sh
   ```

1. zsh plugin install

   ```bash
   exec zsh
   ```

1. neovim plugin install

   ```bash
   vi --headless -c 'Lazy! sync' -c 'qall'
   ```
   
    or

    ```bash
    nvim
    ```

## Components

- zsh
- neovim

## Usage

### Frequently used shortcuts or plugin command

#### zsh

| key                  | action        |
| -------------------- | ------------- |
| (Ctr-X v) or (f)     | fzf vim search|
| Ctr-X s              | fzf cd        |
| z                    | zoxide        |
| bd                   | bd            |
| {general fzf shorcut}| fzf           |


