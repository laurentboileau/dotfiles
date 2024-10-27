# Create a new directory and enter it

function mkd
	mkdir -p "$argv[1]" && cd "$argv[1]";
end
