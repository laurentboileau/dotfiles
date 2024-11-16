# Sort and remove duplicates

function sort_and_uniq
	if test (count $argv) -ne 1
		echo "Usage: sort_and_uniq <file_path>"
		return 1
	end

	set file_path $argv[1]

	if not test -f $file_path
		echo "File not found: $file_path"
		return 1
	end

	# Sort the file and remove duplicate lines
	sort $file_path | uniq > $file_path.sorted

	mv $file_path.sorted $file_path

	echo "File sorted and duplicates removed: $file_path"
end
