# Valid for macOS (or anything using BSD tools)
# The equivalent on systems using GNU tools is "ls -Ah --color=auto"
function ls --description 'alias ls=ls -AhG'
 command ls -AhG $argv; 
end
