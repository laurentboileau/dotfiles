function print_bitrate --description "Display bit rate information for one or more audio files."
	# Parse arguments
	argparse h/help -- $argv
	or return

	# Handle --help flag
	if set -q _flag_help
		echo "Usage: print_bitrate [-h|--help] file [file...]"
		echo ""
		echo "Display bit rate information for one or more audio files."
		echo ""
		echo "Arguments:"
		echo "  file    One or more audio files"
		echo ""
		echo "Options:"
		echo "  -h/--help  Show this help message"
		return 0
	end

	if test (count $argv) -eq 0
		print_bitrate --help
		return 0
	end

	# Process each file, reporting failures without stopping
	set -l result 0
	for filepath in $argv
		set -l info "$(afinfo "$filepath")"
		or begin
			set result $status
			continue
		end
		set -l bps (printf '%s\n' "$info" | grep "bit rate")
		printf '%s –> %s\n' "$filepath" "$bps"
	end
	return $result
end
