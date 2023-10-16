#include <stdio.h>
#include <assert.h>

int main(int* a, size_t N) {

    assert (N > 2);
    double r = a[1]/a[0];
    int nelem = 0, ncomps = 0;

    for (int i = 1; i <= N-2; i++) {
        if (a[i] != r * a[i-1]) {
            return 1;
        }
        
    }
}