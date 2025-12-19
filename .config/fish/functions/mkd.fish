function mkd --description "Create a new directory and change to it."
	# Parse arguments
	argparse h/help -- $argv
	or return

	# Handle --help flag
	if set -q _flag_help
		echo "Usage: mkd [-h|--help] directory"
		echo ""
		echo "Create a new directory and change to it."
		echo ""
		echo "Arguments:"
		echo "  directory    Directory to create and change to"
		echo ""
		echo "Options:"
		echo "  -h/--help  Show this help message"
		return 0
	end

	if test (count $argv) -eq 0
		mkd --help
		return 0
	end

	mkdir -p "$argv[1]" && cd "$argv[1]"
end
