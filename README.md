# Setup for a new Linux distro

## HomeBrew
```bash
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
$ eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
$ brew install gcc exa fzf
```

## NVM
```bash
$ wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
$ nvm install node
$ nvm use node
```

### Global node packages
```bash
$ npm i -g prettier serve
```

## Yarn
```bash
$ curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
$ echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
$ sudo apt update
$ sudo apt install yarn
```

## Neovim
```bash
$ sudo add-apt-repository ppa:neovim-ppa/stable
$ sudo apt-get update
$ sudo apt-get install neovim
```

## git
```bash
$ ssh-keygen -t rsa -b 4096 -C "benjohn.carter@gmail.com"
$ eval $(ssh-agent -s)
$ ssh-add ~/.ssh/id_rsa
$ cat ~/.ssh/id_rsa.pub | clip.exe
$ mkdir -p ~/dev/git/github
```

- add the clipped key to [Github](https://github.com/settings/keys)

## Source relevant files

```bash
$ echo 'source ~/.my_profile' >> ~/.bashrc
$ mkdir ~/.config/nvim && touch ~/.config/nvim/init.vim && echo 'source ~/.vimrc' >> ~/.config/nvim/init.vim 
```

## Starting vim for the first time
```vim
:PlugInstall
:call coc#util#install()

