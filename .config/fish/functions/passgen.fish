# generate password

function passgen --description 'generate password'
  set PASSLEN 8
  set COUNT (count $argv)
  if test $COUNT -ge 1
    set PASSLEN $argv[1]
  end
  pwgen -Bs $PASSLEN 1 | pbcopy;
  echo 'password copied to clipboard'
end
