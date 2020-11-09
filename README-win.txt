# this ascii text file is in the Microsoft DOS/Windows text format
# where CR LF characters are added as line end ( in mac/linux you have only LF )
# showchars.c shows size and range of char data type

# to compile on linux (note the -lm , meaning linking math lib)

gcc showchars.c -o showchars -lm

#to run, use piping to less for paging long output

./showchars | less

# and move with the arrow keys to scroll all the output

# you can compile it also using the GNU make utility

make showchars

# in MS win we suppose you have copied mingw32-make.exe on make.exe
# or in MS win cmd

make -f Makefile.win

# or in MS win using mingw 64bit terminal (or 32bit, in case)

make -f Makefile.mingw

# or in MS win using the cmd terminal

make -f Makefile.win

# if you want to omit the -f Makefile.exe you can copy the makefile
# of your choice on a file name Makefile

# to save the output on an ascii file on linux/mac terminal

./showchars > numbers.txt

# on MS cmd to save the output on an ascii file by terminal

.\showchars.exe > numbers.txt 

# on MS mingw/msys2 to save the output on an ascii file by terminal

./showchars.exe > numbers.txt 
# to plot numbers printed by showchars program you need gnuplot installed
# to plot the line of printed numbers on the screen with gnuplot from cmd/mingw/linux terminal
gnuplot -p -e "plot 'numbers.txt'"
# to plot from file explorer GUI on MS win click with mouse on plotchars.bat
# to plot from file explorer GUI on mac/linux click with mouse on plotchars.sh
# if you install git-bash app on MS win https://gitforwindows.org/ , you can run bash/unix-shell scripts 
# clicking with the mouse on the icon in file explorer as well
#to plot data produced by the program using make utility
make plot
# to just create the data file using make utility
make data
# to clean all produced files using make utility
make clean
