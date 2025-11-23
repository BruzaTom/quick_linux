#!/bin/bash
set -e  # exit immediately on error

# Variables
REPO_URL="https://github.com/BruzaTom/quick_linux.git"
REPO_DIR="quick_linux"
EXEC_FILE="vmtools.sh"
COPY_FILE="check_installs.sh"
DEST_DIR="$HOME/.config/tomux"

# Clone the repo
git clone "$REPO_URL" "$REPO_DIR"

# Copy another file to destination
mkdir -p "$DEST_DIR"
cp "$REPO_DIR/$COPY_FILE" "$DEST_DIR/"
chmod +x "$DEST_DIR/$COPY_FILE"

# Execute the file (make sure it's executable)
chmod +x "$REPO_DIR/$EXEC_FILE"
"$REPO_DIR/$EXEC_FILE"

rm setup.sh

# Remove the repo directory
rm -rf "$REPO_DIR"

echo "Install vmtools complete."

