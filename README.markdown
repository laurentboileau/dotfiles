# dotfiles

User configuration files for macOS.

- [fish shell][fish]
- [yt-dlp][yt-dlp]

[fish]: https://fishshell.com
[yt-dlp]: https://github.com/yt-dlp/yt-dlp

## Software

Install software with [Homebrew][homebrew] and [Brewfile][brewfile].

```
brew bundle install
```

[homebrew]: https://brew.sh
[brewfile]: ./Brewfile

## Verified Commits

Install `gnupg` and `pinentry-mac` with [Homebrew][homebrew].

```
brew install gnupg pinentry-mac
```

Import private key.

```
gpg --import private.pgp
```

Trust private key.

```
gpg --edit-key user@email.com
gpg> trust
gpg> save
```

#### See also

- [Restart gpg-agent][restart-gpg-agent]
- [Configure GPG for Tower][tower-gpg-key]
- [gpg: Sorry, no terminal at all requested - can't get input][gpg-conf]

[restart-gpg-agent]: https://superuser.com/a/1150399
[tower-gpg-key]: https://www.git-tower.com/help/guides/integration/gpg/mac
[gpg-conf]: https://stackoverflow.com/a/51174117

## Notes

Default `$PATH` value: `/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin`