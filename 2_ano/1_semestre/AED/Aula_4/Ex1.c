#include <stdio.h>
#include <assert.h>

int f1(int* parray, size_t N) {

    assert (N > 2);
    int nelem = 0, ncomps = 0;
    for (int i=1; i<N-1; i++) {
        ncomps++;
        if (parray[i] = parray[i-1] + parray[i+1]) {
            nelem++;
        }
    }
    return nelem;
}