# BMP Image Filter Program 🖼️

This program applies filters to 24-bit BMP image files. The available filters are: **blur**, **grayscale**, **reflection**, and **sepia**. The program processes the image, modifies the pixels, and generates a new file with the applied filter.

---

## Features 🚀
- **Filter Options**:  
   - **b**: Blur the image  
   - **g**: Convert the image to grayscale  
   - **r**: Reflect the image horizontally  
   - **s**: Apply a sepia tone to the image  
- **BMP File Handling**:  
   - Reads and writes **24-bit BMP files** with proper handling of headers and pixel data.  
   - Stores image data using **RGBTRIPLE structs** for efficient manipulation of pixel values.  

---

## How It Works ⚙️
1. **Input**:  
   - The program accepts a command-line argument specifying the filter and the image file:  
     ```
     ./filter filter_type input.bmp output.bmp
     ```  
     - **filter_type**: One of the following options: `b`, `g`, `r`, `s`  
     - **input.bmp**: The input BMP image file  
     - **output.bmp**: The output BMP file with the filter applied  

2. **Processing**:  
   - The image is read into a 2D array of pixels.  
   - Depending on the chosen filter (`b`, `g`, `r`, or `s`), a corresponding function is called to modify the pixel values

3. **Output**:  
   - After processing, the program writes the modified image back to a new BMP file with the applied filter.
