#include <stdio.h>

int add(int n1, int n2){
    return n1+n2;
}
int sub(int n1, int n2){
    return n1-n2;
}
int mul(int n1, int n2){
    return n1*n2;
}
int div(int n1, int n2){
    return n1/n2;
}

int main(){
    int opt, n1, n2;
    char result[75];
    
    printf("Choose (1/2/3/4): ");
    scanf("%d", &opt);
    printf("Number 1: ");
    scanf("%d", &n1);
    printf("Number 2: ");
    scanf("%d", &n2);
    
    switch (opt){
        case 1:
            sprintf(result, "%d", add(n1, n2));
            break;
        case 2:
            sprintf(result, "%d", sub(n1, n2));
            break;
        case 3:
            sprintf(result, "%d", mul(n1, n2));
            break;
        case 4:
            sprintf(result, "%d", div(n1, n2));
            break;
        default:
            sprintf(result, "\033[0;31mNot found");
            break;
    }
    
    printf("Result is: %s\n", result);
    // \033[0m
    return 0;
}