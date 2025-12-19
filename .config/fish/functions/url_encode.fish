function url_encode --description "URL encode strings."
	# Parse arguments
	argparse h/help -- $argv
	or return

	# Handle --help flag
	if set -q _flag_help
		echo "Usage: url_encode [-h|--help] string [string...]"
		echo ""
		echo "URL encode strings."
		echo ""
		echo "Arguments:"
		echo "  string    One or more strings"
		echo ""
		echo "Options:"
		echo "  -h/--help  Show this help message"
		return 0
	end

	if test (count $argv) -eq 0
		url_encode --help
		return 0
	end

	# Process each file
	for string in $argv
		python3 -c 'import sys, urllib.parse; print(urllib.parse.quote_plus(sys.argv[1]))' $string
	end
end
