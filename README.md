# GG-Downloader

A CDN downloader in active development.

*Need more testing, expect bugs*

# What it Does
- Allows all the CDN links, main gamepage link or download by a standalone slug;
- Requests the username/password, saves in a permission-limited config, can reset; Shell's `read` unable to hide the password on input;
- Does not leak the username/password in command line options when downloading;
- Can temporary overwrite username/password by CLI options (not recommended);
- [Requires `7z gzip tar`] Downloads archived Github SFV for verification on initial setup, can use the latest from Github;
- [Requires `7z gzip tar`] Uses newer CDN SFV when found on a page;
- Prefers to put into slug-named directories by default, depends on the page link; It can be disabled;
- Skips EXE/BIN patches in the Patch/Other category, not Game; Doesn't skip if told by a separate standalone CDN link but then cannot check it by SFV nor output into a directory (Patch/Other has no "slug" to use);
- Checks for free space on each download, will reject on less than Download Size + 32MB space;
- Skips existing finished files (".part" used for unfinished);
- Sets the date by CDN's modification date;
- Retries to download indefinitely;
- [Requires `aria2c`] Can use Aria2c for downloads;
- [Requires `aria2c`] Can resume download on Curl or Aria2c, not interchangeable;
- [Requires `attr`] Can set origin/referrer URL in extended attributes;
- [Requires `ggchk`] Can self-verify files one completion when availible;
- [Undocumented, requires `7z`] Rename to `crc32`/`crc64` to turn it a checksummer.

Basic Requirement: `sh coreutils grep curl sed`

Will Use if Found: `nslookup ggchk aria2c 7z gzip tar attr`
