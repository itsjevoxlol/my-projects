# Cash - Minimum Coins Calculator

## Overview

This project implements a program that calculates the minimum number of coins required to make a given amount of change, using a **greedy algorithm**. The program considers standard U.S. coin denominations: quarters (25¢), dimes (10¢), nickels (5¢), and pennies (1¢). The solution efficiently determines the optimal number of coins to minimize the total count.

## How It Works

1. The program takes an input value (the change owed) in cents.
2. Using a **greedy approach**, it subtracts the largest coin denomination (quarters → dimes → nickels → pennies) at each step.
3. The process repeats until the remaining change is **0**.
4. The program outputs the total number of coins used.
