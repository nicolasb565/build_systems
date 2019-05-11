#include <factoriel.h>

long long factoriel(long long i)
{
    if(i < 0)
    {
        return -1;
    }
    
    long long result = 1;
    long long j;
    
    for(j = 2; j <= i; j++)
    {
        result *= j;
    }
    
    return result;
}
