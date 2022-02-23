# Hide all desktop icons (useful when presenting)

function desktophide
  defaults write com.apple.finder CreateDesktop -bool false && killall Finder
end