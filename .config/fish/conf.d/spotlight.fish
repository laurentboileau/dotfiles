# Disable/enable Spotlight

function spotoff
  sudo mdutil -a -i off
end

function spoton
  sudo mdutil -a -i on
end