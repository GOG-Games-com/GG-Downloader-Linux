# GG-Downloader
Download files from GOG Games CDN.

To access, a "cdn.gog-games.com" username/password is required.

## TL:DR I'm dumb
1. Download and make executable: `chmod +x gg-downloader`
2. Authenticate: `./gg-downloader -a`
3. Download: `./gg-downloader https://gog-games.com/game/arcade_paradise` (replace url for another game)
4. Entered wrong creds for auth? `./gg-downloader --reset`

# Usage
gg-downloader [OPTION]... [URL/SLUG/ID]...

**Main Options**

***--donate*** open the GOG Games Store link for CDN access

***-u [USERNAME]*** set your GOG Games CDN username

***-p [PASSWORD]*** set your GOG Games CDN password

***--reset*** reset username/password config

***-w [ADDRESS]*** set the GOG Games address

***-a, --auth*** check authentification and exit

***-c, --clip-gui*** open the window to enter URLs/SLUGs/IDs to download

**File Options**

***--setup*** download setup/patch EXE/BIN installers of a game from its SFV, ignoring game page files from its Patch/Other URLs (default)

***--no-setup*** do not download the mentioned installers of a game

***--extra*** download goodies of a game, all the other files from its SFV, ignoring game page files from its Patch/Other URLs (default)

***--no-extra*** do not download the mentioned goodies of a game

***-k, --keep*** always keep (don't delete) currently CDN-listed files (default)

***-f, --fresh*** autodelete/redownload currently CDN-listed files when necessary

***-n, --no-dir*** do not put files in a slug subdir (default on Patch/Other URLs)

***--unsafe*** do not verify download integrity (default on Patch/Other URLs)

**Sync Options**

***-s, --sync*** scan your current directory for known slug-name subdirectories, update the data and exit (ignoring any passed [URL/SLUG/ID]...)

***--clean*** only when a sync, delete foreign non-sync files in the subdirs

***-d [SFV]*** only when a sync, compare the CDN's filelist against the SFV's

**Misc Options**

***-l, --latest*** list dates/titles of added/updated on GOG Games CDN and exit

***-L, --Latest*** list slugs of added/updated on GOG Games CDN and exit

***--lsync*** scan your current directory for known slug-name subdirectories, list slug links for a sync and exit (ignoring [URL/SLUG/ID]...)

***--Lsync*** scan your current directory for known slug-name subdirectories, list file links for a sync and exit (ignoring [URL/SLUG/ID]...)

***--Lclean*** scan your current directory for known slug-name subdirectories, list foreign non-sync data and exit (ignoring [URL/SLUG/ID]...)

***--sfv*** update the offline SFV database (default on --sync)

***--no-sfv*** do not update the offline SFV database

**Mini Options**

***-S [SFV]*** a shortcut for *--sync, --fresh, -d [SFV], --clean*

***-G [SFV]*** a shortcut for *--lsync, -d [SFV]*

***-S [SFV]*** a shortcut for *--Lsync, -d [SFV]*

***-F [SFV]*** a shortcut for *--Lclean, -d [SFV]*

**Info Options**

***--help*** display this help and exit

***--version*** output version information and exit

# Requirements
`bash coreutils diffutils curl grep`

**Optional Packages**

`python>=3.7 bind9-dnsutils aria2c 7z gzip tar attr zenity unzip`
