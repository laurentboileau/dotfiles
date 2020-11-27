# dotfiles

User configuration files for `zsh` on macOS.

## oh-my-zsh

Works best with [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh). 

Just copy `profile.zsh` to `$ZSH_CUSTOM`

### Plugins

To start using plugins, configure the plugins array in ~/.zshrc:

```
plugins=(git osx textmate vscode xcode)
```

## Verified Commits

1. Install `gnupg` and `pinentry-mac` with homebrew
2. Import keys
3. Configure Tower.app

## Applications

The following is a list of applications I usually install on my mac.

- 1Blocker.app
- 1Password 7.app
- Alfred 4.app
- Backblaze.app
- Bartender 4.app
- Boop.app
- Core Data Lab.app
- DaisyDisk.app
- Dash.app
- Deliveries.app
- Developer.app
- Divvy.app
- Docker.app
- Dropbox.app †
- FUJIFILM X RAW STUDIO.app
- Firefox.app
- Fluid.app
- GarageBand.app
- Google Chrome.app
- Hex Fiend.app
- Icon Slate.app
- Instapaper Save.app
- Messenger.app †
- MusicBrainz Picard.app
- Numbers.app
- NZBVortex 3.app
- Optimus Player.app
- Pages.app
- PaintCode.app
- Pastebot.app
- Paw.app
- Pixelmator Pro.app
- Plex Media Server.app
- Proxyman.app
- SF Symbols.app
- SVG Assets.app
- Screens Connect.app
- Sim Genie.app
- Soulver 3.app
- SuperDuper!.app
- TaskPaper.app
- TextMate.app
- Tot.app
- Tower.app
- Transmission.app
- Transmit.app
- Tweetbot.app
- Visual Studio Code.app
- Xcode.app

†: Created using Fluid.app

## Homebrew Packages

```
➜  ~ brew leaves
```
- cloc
- gnupg
- jq
- pinentry-mac
- swiftlint
- youtube-dl

## Historical Notes

### $PATH

Big Sur: `/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin`

Catalina: `/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin`
