function touchx --description 'touch executable file'
  touch $argv[1]
  chmod +x $argv[1]
end
