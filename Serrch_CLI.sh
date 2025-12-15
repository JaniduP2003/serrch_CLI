#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# Function to display usage
usage() {
    echo -e "${CYAN}Usage: $0 <search_keyword>${NC}"
    echo -e "${YELLOW}Example: $0 'SignalR'${NC}"
    exit 1
}

# Check if keyword is provided
if [ $# -eq 0 ]; then
    usage
fi

KEYWORD="$1"

echo -e "${GREEN}╔════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║${WHITE}        CodeBase Search Tool                    ${GREEN}║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════════════════╝${NC}"
echo -e "${CYAN}Searching for: ${YELLOW}'$KEYWORD'${NC}\n"

# Counter for matches
MATCH_COUNT=0

# Search in the workspace (excluding common directories)
while IFS= read -r -d '' file; do
    # Search for the keyword in the file
    if grep -l -i "$KEYWORD" "$file" > /dev/null 2>&1; then
        MATCH_COUNT=$((MATCH_COUNT + 1))
        echo -e "${MAGENTA}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        echo -e "${BLUE}📁 File: ${WHITE}$file${NC}"
        echo -e "${MAGENTA}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        
        # Show matching lines with line numbers and context
        grep -n -i --color=always -C 1 "$KEYWORD" "$file"
        echo ""
    fi
done < <(find .. -type f \
    ! -path "*/node_modules/*" \
    ! -path "*/.git/*" \
    ! -path "*/bin/*" \
    ! -path "*/obj/*" \
    ! -path "*/.vs/*" \
    ! -path "*/dist/*" \
    ! -path "*/build/*" \
    -print0)

echo -e "${GREEN}═══════════════════════════════════════════════════${NC}"
echo -e "${CYAN}Total matches found: ${YELLOW}$MATCH_COUNT${NC}"
echo -e "${GREEN}═══════════════════════════════════════════════════${NC}"
