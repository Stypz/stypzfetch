#!/bin/bash

# StypzFetch Installation Script
# Usage: curl -sSL https://raw.githubusercontent.com/YOURUSERNAME/stypzfetch/main/install.sh | bash

set -e

echo "ðŸ“¦ Installing StypzFetch..."

# Download the script
if command -v curl &> /dev/null; then
    curl -sSL https://raw.githubusercontent.com/Stypz/stypzfetch/main/stypzfetch -o /tmp/stypzfetch
elif command -v wget &> /dev/null; then
    wget -qO /tmp/stypzfetch https://raw.githubusercontent.com/Stypz/stypzfetch/refs/heads/main/stypzfetch
else
    echo "âŒ Error: curl or wget is required"
    exit 1
fi

# Make it executable
chmod +x /tmp/stypzfetch

# Install to system
if [ -w /usr/local/bin ]; then
    mv /tmp/stypzfetch /usr/local/bin/stypzfetch
    echo "âœ… StypzFetch installed"
else
    sudo mv /tmp/stypzfetch /usr/local/bin/stypzfetch
    echo "âœ… StypzFetch installed"
fi

echo "ðŸŽ‰ Installation complete! Run 'stypzfetch' to use it."
