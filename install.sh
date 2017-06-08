#!/bin/bash
#based on https://gist.github.com/igilham/609e7daa935409fa1617
#Homebrew
echo "Checking for homebrew..."
if ! command -v brew > /dev/null 2>&1; then
		echo "Installing homebrew"
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
echo "Homebrew installed, updating..."

brew update

#To install
programs=(
		git
		tmux
		neovim
)

#Install program
echo "Installing programs..."
brew install ${programs[@]}
echo "Cleaning up..."
brew cleanup

echo "Installing oh-my-zsh..."
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Symlinking files..."
#Running neovim instead
#echo "/.vimrc ${HOME}/.vimrc"
ln -s .tmux.conf ${HOME}
ln -s .zshrc ${HOME}
#check for neovim config folder
if [ -d ${HOME}/.config/nvim ]; then
		echo "Backup of old init.vim"
		cp ${HOME}/.config/nvim/init.vim ${HOME}/.config/nvim/init.vim.bak
		echo "Symlinking..."
		ln -s init.vim ${HOME}/.config/nvim/init.vim
else 
		echo "Could not find neovim folder"
fi

#Setting up package managers
#tmux handles itself
#neovim also handles itsel



