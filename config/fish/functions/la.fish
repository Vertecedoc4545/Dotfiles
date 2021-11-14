function la --wraps=ls --wraps='ls -a' --wraps='exa -ah' --description 'alias la exa -ah'
  exa -ah $argv; 
end
