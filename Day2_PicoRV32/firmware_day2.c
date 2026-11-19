
extern int load(int x, int y);

static void print_char(char c)
{
    *(volatile unsigned int *)0x10000000 = c;
}

static void print_text(const char *s)
{
    while (*s)
        print_char(*s++);
}

int main(void)
{
    int count = 3;
    int result = load(0, count + 1);

    print_text("Sum of number from 1 to ");
    print_char('0' + count);
    print_text(" is ");
    print_char('0' + result);
    print_char('\n');

    return 0;
}
