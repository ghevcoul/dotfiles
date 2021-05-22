# Looks like:
# [HH:MM:SS] (gitbranch) ~/current/directory
#  $ 
function fish_prompt --description 'Write out the prompt'
    # Log previous command to history log file
    log_fish_history

    # Display current time
    set_color $fish_color_redirection
    printf '[%s]' (date "+%H:%M:%S")

    # Show current git branch, if not in a git repo, show username@hostname instead
    set_color -o $fish_color_param
    fish_git_prompt
    if test $status -ne 0
        printf ' %s@%s ' $USER (hostname -s)
    else
        printf ' '
    end

    # Display current working directory, with a newline
    set_color -o $fish_color_command
    echo (prompt_pwd)

    # Give final prompt character
    set_color -o $fish_color_comment
    echo -n ' $ '
    set_color normal
end
