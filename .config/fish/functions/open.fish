function open --description "Open files (or \$PWD) if none supplied."
	# Parse arguments
	argparse h/help -- $argv
	or return

	# Handle --help flag
	if set -q _flag_help
		echo "Usage: open [-h|--help] [file...]"
		echo ""
		echo "Open files (or \$PWD) if none supplied."
		echo ""
		echo "Arguments:"
		echo "  file    Files to open (optional)"
		echo ""
		echo "Options:"
		echo "  -h/--help  Show this help message"
		return 0
	end

	# Open each file path
	set -l files $argv .
	for file in $files
		/usr/bin/open "$file"
	end
end
