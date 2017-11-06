all: clean build

clean:
	rm -rf ~/.agignore
	rm -rf ~/.aliases
	rm -rf ~/.bash_profile
	rm -rf ~/.bashrc
	rm -rf ~/.config/nvim
	rm -rf ~/.ctags
	rm -rf ~/.editorconfig
	rm -rf ~/.env
	rm -rf ~/.gemrc
	rm -rf ~/.gitconfig
	rm -rf ~/.gitignore
	rm -rf ~/.hushlogin
	rm -rf ~/.inputrc
	rm -rf ~/.npmrc
	rm -rf ~/.profile
	rm -rf ~/.psqlrc
	rm -rf ~/.railsrc
	rm -rf ~/.tmux.conf
	rm -rf ~/.vim
	rm -rf ~/.vimrc
	rm -rf ~/.vimrc.bundles
	rm -rf ~/.zlogin
	rm -rf ~/.zsh
	rm -rf ~/.zshenv
	rm -rf ~/.zshrc

build:
	ln -s $(CURDIR)/home/agignore ~/.agignore
	ln -s $(CURDIR)/home/aliases ~/.aliases
	ln -s $(CURDIR)/home/bash_profile ~/.bash_profile
	ln -s $(CURDIR)/home/bashrc ~/.bashrc
	ln -s $(CURDIR)/home/config/nvim ~/.config/nvim
	ln -s $(CURDIR)/home/ctags ~/.ctags
	ln -s $(CURDIR)/home/editorconfig ~/.editorconfig
	ln -s $(CURDIR)/home/env ~/.env
	ln -s $(CURDIR)/home/gemrc ~/.gemrc
	ln -s $(CURDIR)/home/gitconfig ~/.gitconfig
	ln -s $(CURDIR)/home/gitignore ~/.gitignore
	ln -s $(CURDIR)/home/hushlogin ~/.hushlogin
	ln -s $(CURDIR)/home/inputrc ~/.inputrc
	ln -s $(CURDIR)/home/npmrc ~/.npmrc
	ln -s $(CURDIR)/home/profile ~/.profile
	ln -s $(CURDIR)/home/psqlrc ~/.psqlrc
	ln -s $(CURDIR)/home/railsrc ~/.railsrc
	ln -s $(CURDIR)/home/tmux.conf ~/.tmux.conf
	ln -s $(CURDIR)/home/vim ~/.vim
	ln -s $(CURDIR)/home/vimrc ~/.vimrc
	ln -s $(CURDIR)/home/vimrc.bundles ~/.vimrc.bundles
	ln -s $(CURDIR)/home/zlogin ~/.zlogin
	ln -s $(CURDIR)/home/zsh ~/.zsh
	ln -s $(CURDIR)/home/zshenv ~/.zshenv
	ln -s $(CURDIR)/home/zshrc ~/.zshrc
