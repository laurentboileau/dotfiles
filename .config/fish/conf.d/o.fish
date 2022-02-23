# `o` with no arguments opens the current directory, otherwise opens the given
# location

function o
  if test (count $argv) -eq 0
    open .
  else
    open $argv[1]
  end
end