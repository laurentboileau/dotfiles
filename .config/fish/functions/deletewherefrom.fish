# Delete the `com.apple.metadata:kMDItemWhereFroms` extended attribute on a
# given file

function deletewherefrom
	xattr -d com.apple.metadata:kMDItemWhereFroms $argv[1]
end
