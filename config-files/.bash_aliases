alias lt='ls -t -l -r --time-style=full-iso'
alias path='echo $PATH'
alias pathl='echo $PATH | tr ":\"" "\\n"'

table() { sed -e 's:\t\t\t\t\t:\t \t \t \t \t:g' $1 | sed -e 's:\t\t\t\t:\t \t \t \t:g' | sed -e 's:\t\t\t:\t \t \t:g' | sed -e 's:\t\t:\t \t:g' | sed -e 's:^\t: \t:g' | column -s $'\t' -t | less -S ; }


path_append ()  { path_remove $1; export PATH="$PATH:$1"; }
path_prepend () { path_remove $1; export PATH="$1:$PATH"; }
path_remove ()  { export PATH=`echo -n $PATH | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//'`; }

anaconda_load () { path_prepend "/home/steven.davis/software/anaconda/bin"; }
anaconda_unload () { path_remove "/home/steven.davis/software/anaconda/bin"; }
