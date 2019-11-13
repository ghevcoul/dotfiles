# Save command history to a log file
### Need to create the directory ~/.logs for this to work!
# Adapted from: https://spin.atomicobject.com/2016/05/28/log-bash-history/
function log_fish_history
    if test (id -u) -ne 0
        echo [(date "+%Y-%m-%d.%H:%M:%S")] (pwd) \> (history search --max=1) >> ~/.logs/fish-history-(date "+%Y-%m-%d").log
    end
end
