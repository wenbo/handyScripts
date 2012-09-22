*****  https://github.com/tsung/config/blob/master/shell/tmux.conf *****
Default keybindings & Functionality

Ctrl-b % Split the current window into two panes
Ctrl-b q Show pane numbers (used to switch between panes)
Ctrl-b o Switch to the next pane
Ctrl-b c Create new window
Ctrl-b , Rename the current window
Ctrl-b w (List all windows / window numbers)
Ctrl-b d Detach current client


################# sh @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
tmux -S /tmp/pair attach 
################# sh @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


################# dot file @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
bob@hp:handyScripts$ cat ~/.tmux.conf 
set -g prefix C-a
unbind %
bind | split-window -h
bind - split-window -v
################# dot file @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

Tmux 測試 256 色支援
$ echo -e "My favorite color is \033[38;5;148mYellow-Green\033[39m" # 應該會看到黃綠色的顏色, 若不支援 256 色, 會看到綠色
$ tput colors
256
