function dvim --wraps='doas nvim' --description 'alias dvim doas nvim'
  doas nvim $argv; 
end
