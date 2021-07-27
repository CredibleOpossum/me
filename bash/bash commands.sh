# Commands to be put into ~/.bashrc

alias rget="wget -q -c --show-progress --tries=0 --user-agent=\"Mozilla\"" # My wget preferred settings

cat "$(ls -d ~/Desktop/Main/Strings/* | shuf -n 1)" # Cat random file from strings in my "Main" folder, just a fun little command

webm () {
    ffmpeg -i "$@" -c:v libvpx-vp9 -crf 30 -b:v 0 -b:a 128k -c:a libopus "${@%.*}.webm" # My preferred webm settings
}

h264 () {
    ffmpeg -i "$@" -c:v libx264 -preset veryslow -crf 18 "${@%.*}.mp4" # My preferred encoding for videos
}

his () { # Search bash history with deduplicated and sorted results
    search_query=$@
    cat ~/.bash_history | sort -u | grep "$search_query"
}

vic () { # Quickly edit scripts in path
    vim $(which "$@")
}

? () { # Quickly search web
    firefox "https://duckduckgo.com/?q=$(echo "$@" | jq -sRr @uri)"
}
