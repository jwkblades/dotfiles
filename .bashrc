# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export EDITOR=vim

source ~/bin/findAndEdit.sh
source ~/bin/notes.sh
source ~/bin/wdcompletions.sh
source /etc/Bartlet.sh

alias steam="SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0 GDK_SCALE=1 nohup /usr/bin/steam &"

export PATH=$PATH:~/bin

bartlet_enable Prompt
bartlet_enable Branch
bartlet_on

export HISTSIZE=-1
export HISTFILESIZE=-1
