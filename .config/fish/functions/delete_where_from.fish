# Delete the `com.apple.metadata:kMDItemWhereFroms` extended attribute on a
# given file

function delete_where_from
	xattr -d com.apple.metadata:kMDItemWhereFroms $argv[1]
end
