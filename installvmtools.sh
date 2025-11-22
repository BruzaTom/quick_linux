#!/bin/bash
set -e  # exit immediately on error

# Variables
REPO_URL="https://github.com/BruzaTom/quick_linux.git"
REPO_DIR="quick_linux"
EXEC_FILE="vmtools.sh"
COPY_FILE="vmsplash.sh"
DEST_DIR="$HOME/.config/tomux"

# Clone the repo
git clone "$REPO_URL" "$REPO_DIR"

# Execute the file (make sure it's executable)
chmod +x "$REPO_DIR/$EXEC_FILE"
"$REPO_DIR/$EXEC_FILE"

# Copy another file to destination
mkdir -p "$DEST_DIR"
cp "$REPO_DIR/$COPY_FILE" "$DEST_DIR/"

# Remove the repo directory
rm -rf "$REPO_DIR"

echo "Install vmtools complete."

