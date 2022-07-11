# Create a data URL from a file

function dataurl
	set -l mimeType (file -b --mime-type "$argv[1]")
	if string match -r -q '^text\/\w+$' "$mimeType"
		set mimeType "$mimeType;charset=utf-8"
	end
	set -l base64 (openssl base64 -in "$argv[1]" | tr -d '\n')
	echo "data:$mimeType;base64,$base64";
end