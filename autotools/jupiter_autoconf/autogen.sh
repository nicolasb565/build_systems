aclocal
autoheader
autoconf
automake --add-missing &> /dev/null
if [ -e install-sh ]
then
    echo "install-sh has been copied successfully using automake --add-missing"
else
    echo "automake --add-missing could not copy install-sh , try running automake --add-missing manually to figure out why"
    echo "you can build without install-sh but the install target may fail"
fi
