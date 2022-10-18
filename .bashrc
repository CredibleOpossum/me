export EDITOR=vim

GRAY='\[\033[0m\]'
GREEN='\[\033[0;32m\]'
PURPLE='\[\033[0;35m\]'

export PS1="${GREEN}\u ${GRAY}\w ${PURPLE}> ${GRAY}"

alias rget="wget -q -c --show-progress --tries=0 --user-agent=\"Mozilla\"" # My wget preferred settings

cat "$(ls -d ~/Desktop/Main/Strings/* | shuf -n 1)" # Cat random file from strings in my "Main" folder, just a fun little command

webm () {
    ffmpeg -i "$@" -c:v libvpx-vp9 -crf 30 -b:v 0 -b:a 128k -c:a libopus "${@%.*}.webm" # My preferred webm settings
}

h264 () {
    ffmpeg -i "$@" -c:v libx264 -preset veryslow -crf 18 "${@%.*}.mp4" # My preferred encoding for videos
}

alias pipesave="alsactl --file ~/.config/asound.state store" # Save and load audio configuration
alias pipeload="alsactl --file ~/.config/asound.state restore"
