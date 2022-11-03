# GG-Downloader
Download games via command line. Requires a cdn.gog-games.com username and password.

## TL:DR I'm dumb
1. Download and make executable: chmod +x gg-downloader
2. Authenticate: ./gg-downloader -a
3. Download: ./gg-downloader https://gog-games.com/game/arcade_paradise (replace url for another game)
4. Entered wrong creds for auth? ./gg-downloader --reset

## Usage
./gg-downloader [OPTION] [URL/SLUG]

***-u [USERNAME]*** set your username

***-p [PASSWORD]*** set your password

***--reset*** reset username/password config

***-w [ADDRESS]*** set the GOG-Games address

***-a, --auth*** check authentification and exit

***-n, --no-dir*** do not put files in a subdirectory

***-l, --latest*** list added/updated games

***-L, --Latest*** list slugs of added/updated games

***-s, --sfv*** update offline SFV database

***--help*** display this help and exit

## Requirements
`bash coreutils curl`

## Optional Packages
`python>=3.7 nslookup ggchk aria2c 7z gzip tar attr`
