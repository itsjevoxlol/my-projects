# JPEG Recovery Program

## Overview

This program recovers JPEG files from a forensic image of a memory card (e.g., `card.raw`). It searches for JPEG signatures in the image file and extracts each JPEG, saving it as a separate `.jpg` file with sequential names (e.g., `000.jpg`, `001.jpg`, etc.). This is useful for digital forensic investigations where JPEG files have been accidentally deleted or overwritten but are still recoverable from slack space on the card.

## Features

- Reads a forensic image file (e.g., `card.raw`).
- Searches for JPEG file signatures in 512-byte blocks.
- Extracts each JPEG file and saves it as a new `.jpg` file.
- Names each recovered file sequentially starting from `000.jpg`, `001.jpg`, etc.
- Handles slack space and trailing zeros without issue, allowing JPEG recovery even if parts of the file were overwritten with zeros.
