#include <factoriel.h>
#include <stdio.h>

int main()
{
    long long f;
    long long i;
    for(i = 0; i < 21; i++)
    {
        f = factoriel(i);
        printf("factoriel(%lli) = %lli\n", i, f);
    }
    return 0;
}
