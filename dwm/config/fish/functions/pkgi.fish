function pkgi --wraps='doas pkg install' --description 'alias pkgi doas pkg install'
  doas pkg install $argv; 
end
