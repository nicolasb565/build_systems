#include "config.h"

#if HAVE_STDIO_H
#include <stdio.h>
#else
#error must have stdio!!!
#endif

#if HAVE_PTHREAD_H
#include <pthread.h>
#endif

#include <potato.h>

static void* print_it(void* data)
{
    printf("Hello from %s\n", (const char*)data);
}

int main(int argc, char* argv[])
{
#if HAVE_PTHREAD_H
    pthread_t tid;
    pthread_create(&tid, 0, print_it, argv[0]);
    pthread_join(tid, 0);
#else
    print_it(argv[0]);
#endif
    print_potato();
    return 0;
}
