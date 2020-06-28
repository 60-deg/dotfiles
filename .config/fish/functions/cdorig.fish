function cdorig --description 'シンボリックリンクのオリジナルに移動'
  set DIR (readlink $argv)
  cd $DIR
end
