# Hide all desktop icons (useful when presenting)

function desktop_hide
	defaults write com.apple.finder CreateDesktop -bool false && killall Finder
end
