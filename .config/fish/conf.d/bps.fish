# Print an audio file's bit rate

function bps
  afinfo $argv[1] | grep "bit rate"
end