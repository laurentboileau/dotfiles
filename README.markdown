# dotfiles

User configuration files for [fish shell][fish] on macOS.

[fish]: https://fishshell.com

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

[homebrew]: https://brew.sh

#### See also

- [Restart gpg-agent][restart-gpg-agent]
- [Configure GPG for Tower][tower-gpg-key]
- [gpg: Sorry, no terminal at all requested - can't get input][gpg-conf]

[restart-gpg-agent]: https://superuser.com/a/1150399
[tower-gpg-key]: https://www.git-tower.com/help/guides/integration/gpg/mac
[gpg-conf]: https://stackoverflow.com/a/51174117

## Notes

Default `$PATH` value: `/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin`