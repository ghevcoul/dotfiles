# Note: To get the prompt to show full directory names of prompt_pwd need to add
# set -g fish_prompt_pwd_dir_length 0
# to ~/.config/fish/config.fish

function fish_prompt --description 'Write out the prompt'
    # Log previous command to history log file
    log_fish_history

    # echo the info prompt
    echo (set_color $fish_color_redirection)"["(date "+%H:%M:%S")"] "(set_color -o $fish_color_parameter)$USER@(hostname -s) (set_color -o $fish_color_command)(prompt_pwd)
    echo (set_color -o $fish_color_comment)" \$ "(set_color normal)
end
