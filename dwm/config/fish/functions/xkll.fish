function xkll --wraps='doas killall Xorg' --description 'alias xkll doas killall Xorg'
  doas killall Xorg $argv; 
end
