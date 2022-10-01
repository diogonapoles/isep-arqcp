void uppercase(char *str, int arr_size)
{
    int i;

    for(i = 0; i < arr_size; i++) {
        if(*str >= 65 + 32 && *str <= 90 + 32) { //65+32 is "a" and 90+32 is "z"
            *str = *str - 32;
        }
        str++;// skips one position of the array
    }
}