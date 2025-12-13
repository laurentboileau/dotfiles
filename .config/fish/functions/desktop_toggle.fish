function desktop_toggle --description "Toggle visibility of desktop icons."
	# Parse arguments
	argparse --strict-longopts -x hidden,shown 'hidden' 'shown' 'help' -- $argv
	or return
	
	# Handle --help flag
	if set -q _flag_help
		echo "Usage: desktop_toggle [--hidden | --shown] [--help]"
		echo ""
		echo "Toggle visibility of desktop icons."
		echo ""
		echo "Options:"
		echo "  --hidden  	Hide desktop icons"
		echo "  --shown  	Show desktop icons"
		echo "  --help  	Show this help message"
		return 0
	end

	# Handle options
	if set -q _flag_shown
		defaults write com.apple.finder CreateDesktop -bool true
		killall Finder
	else if set -q _flag_hidden
		defaults write com.apple.finder CreateDesktop -bool false
		killall Finder
	else
		desktop_toggle --help
	end
end
