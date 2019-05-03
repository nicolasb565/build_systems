#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([jupiter], [1.0], [nicolas.beland@bentley.com])
AC_CONFIG_COMMANDS([project_name_cmd], [echo "Package name is $mypkgname"], [mypkgname=$PACKAGE_NAME])
AC_CONFIG_SRCDIR([src/main.c])
AC_CONFIG_HEADERS([config.h])

AC_DEFINE(USE_POTATO, 1, "use potato in build")

# Checks for programs.
AC_PROG_CC
AC_PROG_INSTALL

# Checks for libraries.
AC_ARG_ENABLE([multithread], [  --disable-multithread (multithread enabled by default)], [multithread=no], [multithread=yes])
if test "x${multithread}" = xyes; then
    AC_SEARCH_LIBS([pthread_create], [pthread], [have_pthreads=yes], [have_pthreads=no ; echo "missing pthread lib will build in single thread mode"])
fi

# Checks for header files.
AC_CHECK_HEADERS([stdio.h],, echo "missing stdio.h exiting" && exit 1)
if test "x${have_pthreads}" = xyes; then
    AC_CHECK_HEADERS([pthread.h],, echo "missing pthread.h will build in single thread mode")
fi

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_CONFIG_FILES([Makefile
                 src/Makefile])
AC_OUTPUT
