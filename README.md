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

***--setup*** download installers of a product (default)

***--no-setup*** do not download installers of a product

***--extra*** download goodies of a product (default)

***--no-extra*** do not download goodies of a product

***-k, --keep*** always keep (don't delete) the old files (default)

***-f, --fresh*** delete the old files when checksums are different

***-n, --no-dir*** do not put files in a slug subdirectory

***--unsafe*** do not verify integrity of downloads

**Sync Options**

***-s, --sync*** update the products in slug subdirectories and exit

***--clean*** delete foreign non-sync files, then do a sync and exit

***-d [SFV]*** when a sync, compare the newer data against the SFV

**Misc Options**

***-l, --latest*** list added/updated on GOG Games CDN

***-L, --Latest*** list slugs of added/updated on GOG Games CDN

***--lsync*** list slug links for a sync and exit

***--Lsync*** list GOG Games CDN links for a sync and exit

***--Lclean*** list foreign non-sync files and exit

***--sfv*** update the offline SFV database (default on sync)

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
