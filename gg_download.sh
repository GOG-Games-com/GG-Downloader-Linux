#!/bin/bash

## User variables - You need to or should change these
# These HAVE to be changed
USERNAME='cdn-username'
PASSWORD='cdn-password'
# Directory to download files
DOWNLOAD_DIRECTORY='/tmp'
# Do not go above 4 threads
DOWNLOAD_THREADS='4'

## Global variables
GG_BASE_URL='https://gog-games.com'
CDN_BASE_URL='htts://cdn.gog-games.com'
GAME_SLUG="$1"

## Set colors
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
reset=$(tput sgr0)

## Dependency checks
#Check if cURL installed
if ! command -v curl >/dev/null 2>&1; then
    echo ${red}"cURL in not installed.."${reset} 
	echo ${red}"sudo apt install curl"${reset} 
	exit
fi

#Check if aria2 installed
if ! command -v aria2c >/dev/null 2>&1; then
    echo ${red}"aria2 in not installed."${reset}
        echo ${red}"sudo apt install aria2"${reset}
        exit
fi

# Scape all file names from the game page
#curl -s "$GG_BASE_URL/game/$GAME_SLUG" | grep -Po '(<span class=\"filename\">)(.*?)(</span>)' | sed 's/<[^>]*>//g'

# Download
aria2c --http-auth-challenge=true --http-user="$USERNAME" --http-passwd="$PASSWORD" -x "$DOWNLOAD_THREADS" -d "$DOWNLOAD_DIRECTORY/$GAME_SLUG" "https://cdn.gog-games.com/downloads/cyberpunk_2077_game/setup_cyberpunk_2077_build_3906793change_4790877_(64bit)_(54418)-1.bin"
