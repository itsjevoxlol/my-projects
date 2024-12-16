# Volume Adjuster 🔊  

This program adjusts the **volume** of a WAV audio file by scaling its sample values based on a given factor. It processes the input WAV file, modifies its audio samples, and saves the adjusted audio to a new output file.  

---

## Features 🚀  
- **Volume Scaling**:  
   - Accepts a **scaling factor** to increase or decrease audio volume.  
   - Example: Factor `2.0` doubles the volume, while `0.5` cuts it in half.  
- **WAV File Handling**:  
   - Reads and writes the **44-byte WAV header** to maintain file structure.  
   - Processes each **16-bit audio sample**, scales it by the factor, and writes the new samples to the output file.  
- **Memory Safety**:  
   - Ensures no **memory leaks** when dynamic memory allocation (e.g., `malloc`) is used.  

---

## How It Works ⚙️  
1. **Input**:  
   - The program takes 3 command-line arguments:  
     ```
     ./volume input.wav output.wav factor  
     ```  
     - **input.wav**: The original audio file.  
     - **output.wav**: The new audio file with adjusted volume.  
     - **factor**: The volume scaling factor (e.g., `2.0` for doubling volume, `0.5` for halving it).  

2. **Processing**:  
   - Reads the **header** (44 bytes) from the input file and writes it to the output file.  
   - Reads each **16-bit sample**, scales it using the factor, and writes the adjusted sample to the output file.  

3. **Output**:  
   - Generates a new WAV file with the modified volume. 
