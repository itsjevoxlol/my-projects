# Caesar Cipher

## Description

This program implements Caesar's cipher, an encryption algorithm used to shift letters in a message by a specified number of positions. For instance, shifting the word **HELLO** by a key of `1` produces the ciphertext **IFMMP**. This algorithm ensures simple encryption by rotating each letter of the alphabet by a given key while preserving non-alphabetical characters and letter casing.

The program accepts a **key** as a command-line argument, then prompts the user to input a plaintext message. It outputs the corresponding ciphertext, where:
- Capital letters remain capitalized.
- Lowercase letters remain lowercase.
- Non-alphabetical characters remain unchanged.
