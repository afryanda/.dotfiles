#!/bin/sh -e

help()
{
    # Display Help
    echo "Script to shot your screen."
    echo
    echo "Syntax: shot.sh [-s|-c|-h]"
    echo "options:"
    echo "s    Select area to shot."
    echo "c    Copy to your clipboard."
    echo "d    Directory to save shots."
    echo "h    Print this Help."
    echo
}

# Set variables
sel=""
file=$(date +"shot_%F_%H-%M-%S.png")
dir=$HOME

# Get the options
while getopts ":hscd:" option; do
    case $option in
        h) # display Help
            help
            exit ;;
        \?) # invalid
            echo "Error: Invalid option"
            exit ;;
        d) # directory
            dir=$OPTARG ;;
        s) # selection
            sel=$(slop -f "-i %i -g %g") ;;
        c) # copy to clipboard
            shotgun $sel - | xclip -t 'image/png' -selection clipboard
            exit ;;
    esac
done

shotgun $sel $dir/$file
