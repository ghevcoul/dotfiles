function fish_prompt --description 'Write out the prompt'
    # Log previous command to history log file
    log_fish_history

    # Determine exit status of last command
    set stat $status
    # Set status color
    set status_color (set_color -o $fish_color_comment)
    if test $stat -gt 0
        set status_color (set_color -o $fish_color_error)
    end

    # echo the info prompt
    echo (set_color $fish_color_redirection)"["(date "+%H:%M:%S")"] "(set_color -o $fish_color_parameter)$USER@(hostname -s) (set_color -o $fish_color_command)(pwd) $status_color\($stat\)(set_color normal)
    echo (set_color -o $fish_color_comment)" \$ "(set_color normal)
end
