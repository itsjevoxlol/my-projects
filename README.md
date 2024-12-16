# DNA Sequence Identification Program

## Overview

This program analyzes a DNA sequence and compares it to a database of STR (Short Tandem Repeat) sequences to identify to whom the DNA most likely belongs. The program takes a CSV file containing STR counts for several individuals and a text file containing the DNA sequence to be identified. It computes the longest consecutive repeats of specified STR sequences in the DNA and compares these counts with the entries in the CSV file.

## Features

- Reads DNA STR data from a CSV file.
- Computes the longest consecutive repeats for each STR in a DNA sequence.
- Compares STR counts against a database of known individuals.
- Outputs the name of the individual whose STR counts match the DNA sequence, or "No match" if no match is found.
