# Sort and remove duplicates

function sort_and_uniq
	set replace_mode 0
	set file_path ""

	# Parse options
	for arg in $argv
		switch $arg
			case '-r' '--replace'
				set replace_mode 1
			case '*'
				# Assume any non-option argument is the file path
				set file_path $arg
		end
	end

	if test -z "$file_path"
		echo "Usage: sort_and_uniq [-r|--replace] <file_path>"
		return 1
	end

	if not test -f $file_path
		echo "File not found: $file_path"
		return 1
	end

	# Sort the file and remove duplicate lines
	# Use `awk` to ensure line endings are preserved
	set sorted_content (awk '{print $0}' $file_path | sort | uniq)

	if test $replace_mode -eq 1
		# Replace the contents of the file with the sorted and unique lines
		printf "%s\n" $sorted_content > $file_path
		echo "File sorted and duplicates removed: $file_path"
	else
		# Output the sorted and unique lines to the terminal
		printf "%s\n" $sorted_content
	end
end
