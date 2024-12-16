# Runoff Election Simulation

## Description

This program simulates a **ranked-choice voting system** using the **instant runoff** method. Unlike plurality voting, where the candidate with the most votes wins, ranked-choice voting allows voters to rank candidates by preference. This system ensures that the winner more accurately represents the preferences of the majority of voters.

---

## How Instant Runoff Voting Works

1. **Majority Check**:
   - If a candidate receives more than 50% of the first-choice votes, they are declared the winner.

2. **Elimination and Redistribution**:
   - If no candidate has a majority, the candidate with the fewest votes is eliminated.
   - Voters who chose the eliminated candidate as their first choice will have their votes reassigned to their next preferred candidate.

3. **Repetition**:
   - This process repeats (eliminating the lowest-ranked candidate and redistributing votes) until a candidate has more than 50% of the votes.

---

## Program Behavior

1. The program allows voters to rank candidates in order of preference.
2. The program calculates the votes and simulates the runoff process:
   - It checks for a majority winner.
   - It eliminates candidates with the fewest votes.
   - It redistributes votes based on voter preferences.
3. The program repeats this process until a winner is found.

