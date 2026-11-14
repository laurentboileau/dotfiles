function delete_where_from --description "Delete the com.apple.metadata:kMDItemWhereFroms extended attribute on files."
	# Parse arguments
	argparse h/help -- $argv
	or return

	# Handle --help flag
	if set -q _flag_help
		echo "Usage: delete_where_from [-h|--help] file [file...]"
		echo ""
		echo "Delete the com.apple.metadata:kMDItemWhereFroms extended attribute on files."
		echo ""
		echo "Arguments:"
		echo "  file    One or more files"
		echo ""
		echo "Options:"
		echo "  -h/--help  Show this help message"
		return 0
	end

	if test (count $argv) -eq 0
		delete_where_from --help
		return 0
	end

	# Process each file, reporting failures without stopping
	set -l result 0
	for filepath in $argv
		# Skip files without the attribute; `xattr -d` fails on them
		set -l attributes (xattr -- $filepath)
		or begin
			set result $status
			continue
		end
		contains -- com.apple.metadata:kMDItemWhereFroms $attributes
		or continue
		xattr -d com.apple.metadata:kMDItemWhereFroms -- $filepath
		or set result $status
	end
	return $result
end
