#include <stdio.h>
    
int
get_base(char *num_str){
    if (num_str[0] == '0')
        if (num_str[1] == 'x') return 16;
        else if (num_str[1] == 'b') return 2;
        else return 8;
    else
        return 0;
}

int
main(int argc, char *argv[]){
    if (argc != 2) {
        fprintf(stderr, "exactly 1 argument is required");
        return -1;
    }
    char *num_str = argv[1];
    int base = get_base(num_str);
    printf("%d", base);
    return 0;
}
