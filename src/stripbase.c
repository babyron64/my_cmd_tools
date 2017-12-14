#include <stdio.h>

char *
strip_base(char *num_str){
    if (num_str[0] == '0')
        switch (num_str[1]) {
            case 'x' :
            case 'b' :
                return num_str + 2;
            default:
                return num_str + 1;
        }
    else
        return num_str;
    return NULL;
} 

int
main(int argc, char *argv[]){
    if (argc != 2) {
        fprintf(stderr, "exactly 1 argument is required");
        return -1;
    }

    char *in_str = argv[1];
    char *out_str = strip_base(in_str);
    printf("%s",out_str);
    return 0;
}
