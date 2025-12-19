function ios_codesign --description "Prints codesign entitlements for an *.app file."
	# Parse arguments
	argparse h/help -- $argv
	or return

	# Handle --help flag
	if set -q _flag_help
		echo "Usage: ios_codesign [-h|--help] file [file...]"
		echo ""
		echo "Prints codesign entitlements for an *.app file."
		echo ""
		echo "Arguments:"
		echo "  file    One or more .app files"
		echo ""
		echo "Options:"
		echo "  -h/--help  Show this help message"
		return 0
	end

	if test (count $argv) -eq 0
		ios_codesign --help
		return 0
	end

	# Open each file path
	for filepath in $argv
		set -l entitlements (codesign -d --entitlements - "$file")
		printf '%s –> %s' $filepath $entitlements
	end
end
