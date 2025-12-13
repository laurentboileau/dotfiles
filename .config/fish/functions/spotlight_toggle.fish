function spotlight_toggle --description "Toggle Spotlight indexing on/off."
	# Parse arguments
	argparse --strict-longopts -x on,off 'on' 'off' 'help' -- $argv
	or return
	
	# Handle --help flag
	if set -q _flag_help
		echo "Usage: spotlight_toggle [--on | --off] [--help]"
		echo ""
		echo "Toggle Spotlight indexing on/off."
		echo ""
		echo "Options:"
		echo "  --on  		Enable Spotlight indexing"
		echo "  --off  		Disable Spotlight indexing"
		echo "  --help  	Show this help message"
		return 0
	end

	# Handle options
	if set -q _flag_on
		sudo mdutil -a -i on
	else if set -q _flag_off
		sudo mdutil -a -i off
	else
		spotlight_toggle --help
	end
end
