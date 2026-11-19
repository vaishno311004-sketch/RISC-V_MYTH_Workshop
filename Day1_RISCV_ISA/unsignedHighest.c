#include <stdio.h>
#include <limits.h>

int main() {
    unsigned long long int max = (1ULL << 10) - 1;

    printf("Highest number represented by unsigned long long int is %llu\n", max);

    return 0;
}
