if not type -q code
  function code --description 'open VSCode'
    open $argv[1] -a Visual\ Studio\ Code.app
  end
end
