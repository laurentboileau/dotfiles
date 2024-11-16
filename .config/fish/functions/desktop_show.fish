# Show all desktop icons (useful when presenting)

function desktop_show
	defaults write com.apple.finder CreateDesktop -bool true && killall Finder
end
