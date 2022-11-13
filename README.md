# GG-Downloader
Download files from GOG Games CDN.

To access, a "cdn.gog-games.com" username/password is required.

## TL:DR I'm dumb
1. Download and make executable: `chmod +x gg-downloader`
2. Authenticate: `./gg-downloader -a`
3. Download: `./gg-downloader https://gog-games.com/game/arcade_paradise` (replace url for another game)
4. Entered wrong creds for auth? `./gg-downloader --reset`

## Usage
./gg-downloader [OPTION] [URL/SLUG]

**Options**

***--donate*** open the GOG Games Store link for CDN access

***-u [USERNAME]*** set your GOG Games CDN username

***-p [PASSWORD]*** set your GOG Games CDN password

***--reset*** reset username/password config

***-w [ADDRESS]*** set the GOG Games address

***-a, --auth*** check authentification and exit

***-c, --clip-gui*** open the window to enter URLs/SLUGs to download

***-n, --no-dir*** do not put files in a subdirectory

***-l, --latest*** list added/updated on GOG Games CDN

***-L, --Latest*** list slugs of added/updated on GOG Games CDN

***-s, --sfv*** update offline SFV database

***--unsafe*** do not verify integrity of downloads

***--help*** display this help and exit

# Requirements
`bash coreutils curl`

**Optional Packages**
`nslookup aria2c 7z gzip tar attr ncurses zenity`
