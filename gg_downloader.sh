#!/bin/bash

## User variables - You need to or should change these
USERNAME='cdn-username'
PASSWORD='cdn-password'
# Directory to download files
DOWNLOAD_DIRECTORY='/tmp'
# Do not go above 4 threads
DOWNLOAD_THREADS='4'

## Global variables
GG_BASE_URL='https://gog-games.com'
CDN_BASE_URL='https://cdn.gog-games.com'
GAME_SLUG="$1"

## Set colors
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
reset=$(tput sgr0)

## Dependency checks
# cURL 
if ! command -v curl >/dev/null 2>&1; then
	echo ${red}"cURL in not installed."${reset} 
	echo ${red}"sudo apt install curl"${reset} 
	exit
fi

# aria2 
if ! command -v aria2c >/dev/null 2>&1; then
	echo ${red}"aria2 in not installed."${reset}
	echo ${red}"sudo apt install aria2"${reset}
	exit
fi

# Make sure input is not empty
if [ -z "$GAME_SLUG" ]; then
	echo ${red}"Error: Please supply a game slug."${reset}
	echo ${red}"Status: Exiting."${reset}
	exit
fi 

# Scrape all file names from the game page
GAME_FILES=$(curl -s "$GG_BASE_URL/game/$GAME_SLUG" | grep -Po '(<span class=\"filename\">)(.*?)(</span>)' | sed 's/<[^>]*>//g')

# Make sure have file names before proceeding
if [ -z "$GAME_FILES" ]; then
	echo ${red}"Error: No filenames were fetched from the game page."${reset}
	echo ${red}"Reason(s): Please check your supplied game slug is valid, no filenames may not listed on the game page or possibly a connection to the website could not be made. "${reset}
	echo ${red}"Status: Exiting."${reset}
	exit 
fi 

# Loop through and download each file
while IFS= read -r file; do
	echo ${green}"Downloading.. $file"${reset} 
	aria2c --http-auth-challenge=true --http-user="$USERNAME" --http-passwd="$PASSWORD" -x "$DOWNLOAD_THREADS" -d "$DOWNLOAD_DIRECTORY/$GAME_SLUG" "$CDN_BASE_URL/downloads/$GAME_SLUG/$file"
done <<< "$GAME_FILES"

exit
