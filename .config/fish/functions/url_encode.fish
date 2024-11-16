# URL-encode strings

function url_encode
	python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"
end
