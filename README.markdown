# dotfiles

User configuration files for macOS.

- [fish shell][fish]
- [mise][mise]

[fish]: https://fishshell.com
[mise]: https://mise.jdx.dev/getting-started.html

## Bootstrap

Install `mise`:

```
curl https://mise.run | sh
~/.local/bin/mise --version
```

Clone this repository and bootstrap the machine.

```
~/.local/bin/mise trust
~/.local/bin/mise bootstrap --dry-run
~/.local/bin/mise bootstrap --yes
```

Start a new shell to apply changes.

## Autocompletion

Follow the [Autocompletion][autocompletion] steps for fish shell.

[autocompletion]: https://mise.jdx.dev/installing-mise.html#autocompletion

Start a new shell to apply changes.

## Verified Commits

`gnupg` and `pinentry-mac` are installed by bootstrap.

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
