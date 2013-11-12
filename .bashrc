# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples


# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# turn off bell
if [ $DISPLAY ]
then
    xset -b
fi

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

PS1='\[\033[0;36m\]\t\[\033[1;30m\][\u@\h:\w] \[\033[0m\]'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

alias skype='/home/people/philip/skype/skype'
alias topmatch='python /home/people/philip/Phoenix/Programs/TopMatch.py'
alias qext="qstat -r -ext -f -u '*'"
alias upd="svn ci \"\$DEV\"/casp.py"

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias lt='ls *.txt'
#alias l='ls -CF'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

########## Personal settings ##################
export PDB=/usr/local/CAME/PDB/Pdb-Mirror/rcsb/current/
export PATH=${PATH}:/usr/local/CAME/share/bin:/usr/local/CAME/bin:~/bin
export DEV=$HOME/Phoenix/Python-Developer/Taferner
export PHOENIX=$HOME/Phoenix
export PYTHONPATH=$PHOENIX/Phoenix-Start
export PHOENIX_CONFIG=$PHOENIX/Config
export EDITOR=vim
export BIBINPUTS='.:/usr/local/CAME/share/literature/bibtex/'
export BSTINPUTS='.:/usr/local/CAME/share/literature/bibtex/:'
###############################################
