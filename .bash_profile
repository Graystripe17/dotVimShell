alias la='ls -a'
alias sl='ls'
alias l='ls'
alias s='ls'
alias ls='ls -Gh'
alias c='cd'
alias ce='cd ~/Desktop/Code'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias svim='sudo vim'
alias youtube='mpsyt'

. /Users/kitty/GitHub/z/z.sh

GREEN="\[$(tput setaf 2)\]"
BLUE="\[$(tput setaf 153)\]"
ORANGE="\[$(tput setaf 4)\]"
RESET="\[$(tput sgr0)\]"
color_enabled() {
    local -i colors=$(tput colors 2>/dev/null)
    [ $? -eq 0 -a $colors -gt 2 ]
}
# Exit code (credit to tilde/.bashrc)
BOLD_FORMAT="${BOLD_FORMAT-$(color_enabled && tput bold)}"
ERROR_FORMAT="${ERROR_FORMAT-$(color_enabled && tput setaf 1)}"
WARNING_FORMAT="${WARNING_FORMAT-$(color_enabled && tput setaf 3)}"
INFO_FORMAT="${INFO_FORMAT-$(color_enabled && tput setaf 4)}"
RESET_FORMAT="${RESET_FORMAT-$(color_enabled && tput sgr0)}"
EXIT_STATUS='$(exit_code=$?; [ $exit_code -eq 0 ] || printf %s $BOLD_FORMAT $ERROR_FORMAT "("$exit_code")" $RESET_FORMAT" ")'

export PS1="$EXIT_STATUS${GREEN}\u${RESET}@${BLUE}\h${RESET}:${ORANGE}\w${RESET}$ "

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
extract () {
        if [ -f $1 ] ; then
              case $1 in
                  *.tar.bz2)   tar xjf $1     ;;
                  *.tar.gz)    tar xzf $1     ;;
                  *.bz2)       bunzip2 $1     ;;
                  *.rar)       unrar e $1     ;;
                  *.gz)        gunzip $1      ;;
                  *.tar)       tar xf $1      ;;
                  *.tbz2)      tar xjf $1     ;;
                  *.tgz)       tar xzf $1     ;;
                  *.zip)       unzip $1       ;;
                  *.Z)         uncompress $1  ;;
                  *.7z)        7z x $1        ;;
                  *)     echo "'$1' cannot be extracted via extract()" ;;
                   esac
        else
              echo "'$1' is not a valid file"
        fi
}

export GOPATH="/Users/kitty/Desktop/Code/Go"

PATH="/usr/bin:/usr/sbin:/sbin:/usr/local/bin:/bin:/usr/X11/bin:$PATH"
PATH="/usr/local/bin/python3:$PATH"
PATH="~/Library/Android/sdk/platform-tools:$PATH"
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:$PATH"
PATH="/usr/local/Cellar/openvpn/2.4.1/sbin:$PATH"
PATH="~/Library/Android/sdk/tools:$PATH"
PATH="/usr/local/opt/go/libexec/bin:$PATH"
PATH="/Users/kitty/Desktop/Code/Bash:$PATH"
PATH="/Users/kitty/Desktop/Code/VHDL/ghdl-0.36-macosx-mcode/bin:$PATH"
PATH="$GOPATH/bin:$PATH"
export PATH

eval "$(rbenv init -)"

export SUBDOMAINS="/Users/kitty/Desktop/Code/Security/SecLists/Discovery/DNS/subdomains-top1mil-20000.txt"
source ~/Github/gtm-terminal-plugin/gtm-plugin.sh


# added by Miniconda3 installer
export PATH="/Users/kitty/miniconda3/bin:$PATH"
