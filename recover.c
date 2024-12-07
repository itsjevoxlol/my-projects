#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define BLOCK_SIZE 512
typedef uint8_t BYTE;

int main(int argc, char *argv[])
{
    // Accept a single command-line argument
    if (argc != 2)
    {
        printf("Usage: ./recover FILE\n");
        return 1;
    }

    // Open the memory card
    FILE *card = fopen(argv[1], "r");
    if (card == NULL)
    {
        printf("file not found\n");
        return 1;
    }

    // Create a buffer for a block of data
    BYTE buffer[BLOCK_SIZE];
    FILE *img = NULL;
    char file_name[8];
    int counter = 0;

    // While there's still data left to read from the memory card
    while (fread(buffer, 1, BLOCK_SIZE, card) == BLOCK_SIZE)
    {
        // Create JPEGs from the data
        if (buffer[0] == 0xff && buffer[1] == 0xd8 && buffer[2] == 0xff && (buffer[3] & 0xf0) == 0xe0)
        {
            // if first jpeg
            if (counter == 0)
            {
                sprintf(file_name, "%03i.jpg", counter);
                img = fopen(file_name, "w");
                fwrite(buffer, 1, BLOCK_SIZE, img);
                counter++;
            }

            // close the previous file and open a new one if a new jpeg is found
            else
            {
                fclose(img);
                sprintf(file_name, "%03i.jpg", counter);
                img = fopen(file_name, "w");
                fwrite(buffer, 1, BLOCK_SIZE, img);
                counter++;
            }
        }

        // keep writing to the same jpeg file if it already found
        else if (counter != 0)
        {
            fwrite(buffer, 1, BLOCK_SIZE, img);
        }
    }

    // close any remaining files
    fclose(card);
    fclose(img);
}
