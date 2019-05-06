dnl example of m4 macros
define(`potato', `patate')
potato

define(`dog', `chien')
dog

dnl so we can easily generate shell command with m4 macros...
define(`copy_cmd', `cp $1 $2')
copy_cmd(`src_file.txt', `dst_file.txt')

#we can change quote character from start=` and end =' to start=[ and end=] like in autotools
changequote(`[', `]')
copy_cmd([src_file2.txt], [dst_file2.txt])

#revert what we did to quotes characters
changequote([`], ['])
copy_cmd(`src_file3.txt', `dst_file3.txt')

dnl add quoting to avoid expansion of copy_cmd
copy_cmd(``copy_cmd.txt'', `dst_file4.txt')

ifelse(`patate', `patate', `patate==patate')
ifelse(`chat', `chien', `chat==chien', `chat!=chien')

ifdef(`copy_cmd', ``copy_cmd' is defined', ``copy_cmd' is not defined')
ifdef(`move_cmd', ``move_cmd' is defined', ``move_cmd' is not defined')
