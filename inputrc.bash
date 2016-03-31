$include /etc/inputrc
# inputrc

# Use case-insensitive TAB autocompletion
set completion-ignore-case on

# Auto list tab completions (use instead of TAB-cycling)
set show-all-if-ambiguous on

# Make TAB cycle through possible completions
"\t": menu-complete
# Make SHIFT-TAB reverse cycle through possible completions
"\e[Z": "\e-1\C-i"

# Use the string that has already been typed as the prefix for searching
# through commands (i.e. more intelligent Up/Down-arrow behavior)
"\e[B": history-search-forward
"\e[A": history-search-backward
#"\e[5~": history-search-backward
#"\e[6~": history-search-forward

