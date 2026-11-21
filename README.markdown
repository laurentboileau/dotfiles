# dotfiles

User configuration files for macOS.

- [fish shell][fish]
- [mise][mise]

[fish]: https://fishshell.com
[mise]: https://mise.jdx.dev/getting-started.html

## Bootstrap

Setup `~/bin`:

```
mkdir ~/bin
chflags hidden ~/bin
```

Install `mise`:

```
curl https://mise.run | MISE_INSTALL_PATH=~/bin/mise sh
~/bin/mise --version
```

Clone this repository into `~/Developer/dotfiles`. Create the `~/.dotfiles`
alias and link the provisioning configuration into mise's global configuration
directory before bootstrapping. Mise validates dotfile sources before creating
links, so the alias must already exist:

```
cd ~/Developer/dotfiles
ln -s ~/Developer/dotfiles ~/.dotfiles
mkdir -p ~/.config/mise
ln -s ~/Developer/dotfiles/.config/mise/*.toml ~/.config/mise/
for f in .config/mise/*.toml; do ~/bin/mise trust "$f"; done
~/bin/mise trust mise.toml
```

Pick the environments for this Mac and bootstrap. `--save-env` remembers them
in `~/.config/mise/miserc.local.toml`, so later runs of `mise bootstrap` don't
need `-E`:

| Mac         | Environments             |
| ----------- | ------------------------ |
| Mac Studio  | `home,mac-studio`        |
| MacBook Pro | `home,macbook-pro`       |

```
~/bin/mise bootstrap -E home,mac-studio --dry-run
~/bin/mise bootstrap -E home,mac-studio --save-env --yes
```

Start a new shell to apply changes.

### Configuration layout

- `.config/mise/config.toml`: shell, mise and dotfiles setup shared by every Mac (no apps)
- `.config/mise/config.home.toml`: everything personal Macs install (apps, tools, GPG, git identity)
- `.config/mise/config.<machine>.toml`: one specific Mac
- `.config/mise/config.local.toml`: machine-local and untracked; never commit it

The git email and signing settings live in `.config/git/identity.<env>`, which
`.gitconfig` includes from `~/.config/git/identity`.

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
