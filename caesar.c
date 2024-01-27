// resubmitting this new year's problem
#include <cs50.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

bool only_digits(string s);
char rotate(char c, int n);

int main(int argc, string argv[])
{
    // counting command-line arguments
    if (argc != 2)
    {
        printf("Usage: ./caesar key\n");
        return 1;
    }

    // checking the key
    if (only_digits(argv[1]) == false)
    {
        printf("Usage: ./caesar key\n");
        return 1;
    }

    // Convert key to int
    int k = atoi(argv[1]);

    // Prompt user for plaintext
    string plaintext = get_string("plaintext:  ");

    // if the character is a letter rotate it
    printf("ciphertext: ");
    for (int i = 0, len = strlen(plaintext); i < len; i++)
    {
        printf("%c", rotate(plaintext[i], k));
    }

    printf("\n");
    return 0;
}

bool only_digits(string s)
{
    for (int i = 0, len = strlen(s); i < len; i++)
    {
        if (isdigit(s[i]) == false)
        {
            return false;
        }
    }

    return true;
}

char rotate(char c, int n)
{
    if (isupper(c))
    {
        c = (c - 65 + n)%26 +65;
        return c;
    }
    else if (islower(c))
    {
        c = (c - 97 +n)%26 + 97;
        return c;
    }
    else
    {
        return c;
    }
}
