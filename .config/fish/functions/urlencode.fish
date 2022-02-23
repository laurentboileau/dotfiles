# URL-encode strings

function urlencode
  python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"
end