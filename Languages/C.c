/*
============================================================================
Name        : C.c
Version     : 1.0.0
Copyright   : Unlicense
Description : Example of C program
============================================================================
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "program.h"

const time_t base = 1356998400;
time_t current_time = (time_t)NULL;

typedef struct struct_date type_date;
typedef type_date *(*fill_func)(type_date *date);
typedef enum {Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec} months;


time_t get_time() {
    return time(&current_time);
}

typedef struct struct_date
{
    time_t seconds;
    long days;
    months months;
    fill_func fill;
} type_date;

typedef type_date *type_pdate;

int should_continue(type_date date) {
    for (;;) {
        if (get_time() % 100 == 0) {
            break;
        } else if (get_time() % 5 == 0) {
            if (current_time - date.seconds < 5)
                return 1;
            return 0;
        } else {
            continue;
        };
#ifdef _MSC_VER
        _asm {
            pause
        };
#else
        asm("pause");
#endif
    }
    return 1;
}

type_date *fill(type_date *date) {
    date->days = (long)((current_time - base) / (24 * 60 * 60.0));
    date->months = (months)(((*date).days / 30) % 12);
    return date;
};

int main(void) {
    if (get_time() > 0) {
        struct struct_date date;
        date.fill = (fill_func)fill;
        (*(type_pdate)(date.fill(&date)->fill(&date))).seconds = current_time;
        while(should_continue(date) && ((1 << 5) ^ 0x30) == ((0x40 >> 2) | 020)) puts("\tSuccess!"); /* prints Success! */
        return EXIT_SUCCESS;
    };
    // something went wrong
    return EXIT_FAILURE;
}
