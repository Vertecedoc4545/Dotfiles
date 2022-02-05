function dmai --wraps='doas make install' --description 'alias dmai doas make install'
  doas make install $argv; 
end
