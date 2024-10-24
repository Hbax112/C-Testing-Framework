# C Testing Framework

## Overview
The **C Testing Framework** is a simple, automated system for identifying, compiling, and executing C source files from a given folder structure. The framework saves the resulting executables in an "Output" directory and performs basic testing of execution correctness by checking the exit codes and outputs against predefined check files.

## Features
- Automatically identifies C source files (`.c`) from the provided folder.
- Compiles each C source file and generates the corresponding executable.
- Saves the executable files and their outputs in a designated "Output" folder.
- Checks compilation results, and if compilation fails, an error log is saved for troubleshooting.
- Verifies execution by comparing exit codes and outputs.
- Cleans up empty error log files after execution.

## Usage
1. Save the script as `CTestingFramework.sh`.
2. Grant execute permissions to the script:
    ```bash
    chmod +x CTestingFramework.sh
    ```
3. Run the script:
    ```bash
    ./CTestingFramework.sh <source_directory> <optional_output_directory>
    ```

   - `<source_directory>`: The folder where the C source files are located.
   - `<optional_output_directory>`: (Optional) The folder where the executables and output files will be saved. If not provided, the default is `Output`.

## Example
```bash
./CTestingFramework.sh ./src ./Output
