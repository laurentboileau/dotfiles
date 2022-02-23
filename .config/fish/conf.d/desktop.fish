# Hide/show all desktop icons (useful when presenting)

function hidedesktop
  defaults write com.apple.finder CreateDesktop -bool false && killall Finder
end

function showdesktop
  defaults write com.apple.finder CreateDesktop -bool true && killall Finder
end