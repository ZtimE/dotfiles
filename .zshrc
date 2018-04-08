# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias termconfig="vim ~/.zshrc"

# Vim tab alias
alias vimtc="vim -p *.h *.cpp *.hpp makefile"
alias vimall="vim -p *"
alias vim="nvim"
alias v="nvim -p"
alias g="git"
alias gs="git status -sb"

#grep alias
grepsource () {grep -nR $* .}
grepsourcei () {grep -inR $* .}

#to remind myself of my smart aliases
#myalias () {$HOME/dotfiles/aliashelp.sh}
myalias () {
echo " ____A_L_I_A_S_E_S__________________________"
echo "|"
echo "|   termconfig: Open vim with zshrc"
echo "|"
echo "|   vimtc: open h,cpp,hpp and makefiles"
echo "|          in tabs"
echo "|   vimall: open all files in tabs" 
echo "|"
echo "|   g: git"
echo "|   gs: pretty git status"
echo "|"
echo "|   grepsource: greps the current directory"
echo "|               for the expression after"
echo "|   grepsourcei: same as above but not"
echo "|                case sensative"
echo "|___________________________________________"
}

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
 COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vagrant sublime vagrant terminalapp brew zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
#Highlights must be after sourcing the plugin

ZSH_HIGHLIGHT_PATTERNS+=('rm *' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main cursor brackets root pattern)

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin
#export PATH=$PATH:/Applications/SWI-Prolog.app/Contents/MacOS #for prolog
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#gopath
#export GOPATH="$HOME/Dropbox/Skola/goWork/"
#fix for powerline
unset LANG
unset LC_COLLATE
unset LC_CTYPE
unset LC_MESSAGES
unset LC_MONETARY
unset LC_NUMERIC
unset LC_TIME
unset LC_ALLC_TIME
unset LC_ALL
export LANG=sv_SE.UTF-8
export LC_COLLATE=sv_SE.UTF-8
export LC_CTYPE=sv_SE.UTF-8
export LC_MESSAGES=sv_SE.UTF-8
export LC_MONETARY=sv_SE.UTF-8
export LC_NUMERIC=sv_SE.UTF-8
export LC_TIME=sv_SE.UTF-8
export LC_ALL=
# remove username and machine from terminal by using my regular username
DEFAULT_USER=jonaswedin
#export PATH="$HOME/.cargo/bin:$PATH"
#export NVM_DIR="$HOME/.nvm"
#. "/usr/local/opt/nvm/nvm.sh"
# android studio for react
#export ANDROID_HOME=${HOME}/Library/Android/sdk 
#export PATH=${PATH}:${ANDROID_HOME}/tools 
#export PATH=${PATH}:${ANDROID_HOME}/platform-tools
