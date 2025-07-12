function ll --wraps=ls --wraps='exa -a -l --icons=auto' --description 'alias ll=exa -a -l --icons=auto'
  exa -a -l --icons=auto $argv
        
end
