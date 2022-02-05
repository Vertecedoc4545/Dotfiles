function pkgs --wraps='pkg search' --description 'alias pkgs pkg search'
  pkg search $argv; 
end
