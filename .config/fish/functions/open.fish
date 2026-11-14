function open --wraps /usr/bin/open --description "Open files, or \$PWD when called without arguments."
	if test (count $argv) -eq 0
		set argv .
	end
	/usr/bin/open $argv
end
