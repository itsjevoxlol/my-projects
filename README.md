# Spell Checker

## Overview

This project implements a spell checker that can detect and correct misspelled words in a given text file. The program utilizes a hash table to efficiently store and check words from a dictionary. The solution is optimized for performance and memory management.

## Features

- **Spell Checking**: Checks words in a given text file against a dictionary for spelling errors.
- **Case-Insensitive**: The spell checker is case-insensitive, meaning it can handle uppercase and lowercase variations.
- **Efficiency**: The program uses a hash table to store dictionary words, ensuring fast lookups.
- **Performance Metrics**: Outputs statistics such as the number of misspelled words, words found in the dictionary, and the program's execution time for different operations.
- **Memory Management**: Implements proper memory management, ensuring no memory leaks through the use of `valgrind`.

## Files

- **dictionary.h**: Defines function prototypes for dictionary operations (`load`, `check`, `size`, `unload`).
- **dictionary.c**: Contains the implementation of dictionary operations, including hash table management.
- **speller.c**: Main program file that handles the user input, file reading, and calls the dictionary functions.
- **Makefile**: Used to compile the program.

## How It Works

1. **Loading the Dictionary**: The program loads a dictionary file into memory, storing each word in a hash table.
2. **Checking Spelling**: The program reads a text file, checks each word against the dictionary, and reports any misspelled words.
3. **Memory Management**: After processing, the program frees the allocated memory for the dictionary and other resources.
