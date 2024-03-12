# Function to execute a C program
crun() {
  local filename="$1"

  # Check if the filename exists
  if [[ -f "$filename" ]]; then
    # Check if the file has a .c extension
    if [[ "$filename" == *.c ]]; then
        gcc "$filename" -o "${filename%.c}"  # Compile the C file
        "./${filename%.c}"  # Run the compiled binary
        (yes | rm "./${filename%.c}") > /dev/null 2>&1 # Remove the compiled binary
    else
        echo "Error: File '$filename' is not a C file."
    fi
  else
      echo "Error: File '$filename' does not exist."
  fi
}  
