echo "In .bashrc"
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Set the bash editor to Vi
set -o vi

# For dark backgrounds
# export LSCOLORS=ExFxCxDxBxegedabagacad

# Set the prompt and title bar
case $TERM in
    xterm*)
        TITLEBAR='\[\033]0;\u@\h:\w\007\]'
        #PS1="\[\033]0;\u@\h: \w\007\]bash\\$ "
        #PS1="${TITLEBAR}[\$(date +%H:%M:%S)][\u@\h:\w][\!,\l,\$?]\$ "
        PS1="${TITLEBAR}[\$(date +%H:%M:%S)][\u@\h:\w][\!]\$ "
        PS2='> '
        PS4='+ '
      ;;
    *)
        PS1="bash\\$ "
        ;;
esac

alias sshpnt="ssh -p 17235 pack-n-tape.com"
alias scppnt="scp -p 17235" 

alias lsof='lsof -nP -i'

function android-console-log () {
    adb logcat browser:V *:S
}

function fucking () {
    sudo "$@"
}

function gg () {
    git grep -n -i "$@"
}

function findname () {
    find . -iname "$@"
}

function filemerge () {
    /Applications/Xcode.app/Contents//Applications/FileMerge.app/Contents/MacOS/FileMerge -left $1 -right $2
}
