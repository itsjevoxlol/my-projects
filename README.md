# Scrabble Game

## Description

This program implements a simplified version of the **Scrabble** game. Players input words, and the program calculates their scores based on the point values of each letter in the words. The program then determines the winner by comparing the scores.

### How Scoring Works:
Each letter has an associated point value:
- A, E, I, L, N, O, R, S, T, U = **1 point**
- D, G = **2 points**
- B, C, M, P = **3 points**
- F, H, V, W, Y = **4 points**
- K = **5 points**
- J, X = **8 points**
- Q, Z = **10 points**

For example:
- The word **CODE** is worth:
  - C = 3, O = 1, D = 2, E = 1 → Total = 7 points.

---

## Program Behavior

1. **Player 1** inputs a word.
2. **Player 2** inputs a word.
3. The program calculates the total score for each word and determines the winner.

The possible outcomes are:
- `Player 1 wins!`
- `Player 2 wins!`
- `Tie!` (if both players score the same points).

---
