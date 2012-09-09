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
set -g prefix Ctrl-a
unbind %
bind | split-window -h
bind – split-window -v
################# dot file @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
