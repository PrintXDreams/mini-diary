#!/bin/bash
# add_note.sh - Add a note to the diary with auto-tagging

set -e

# Default configuration
DIARY_FILE="${DIARY_FILE:-$HOME/diary.md}"
TAGS_CONFIG="${TAGS_CONFIG:-$(dirname "$0")/../config/tags.json}"

# Tag definitions (simplified version)
declare -A TAG_RULES=(
    ["family"]="👨‍👩‍👧"
    ["finance"]="💰"
    ["order"]="📦"
    ["shipping"]="🚚"
    ["tech"]="💻"
    ["support"]="🔧"
    ["bambu"]="🎋"
    ["form"]="📋"
    ["daily"]="📅"
)

# Function to get tags for content
get_tags() {
    local content="$1"
    local tags=""
    
    # Convert to lowercase for matching
    local lower_content=$(echo "$content" | tr '[:upper:]' '[:lower:]')
    
    # Simple keyword matching (can be enhanced with AI)
    if [[ $lower_content =~ family|home|household ]]; then
        tags="${tags}${TAG_RULES[family]}"
    fi
    
    if [[ $lower_content =~ invoice|payment|finance|accounting ]]; then
        tags="${tags}${TAG_RULES[finance]}"
    fi
    
    if [[ $lower_content =~ order|purchase|buy|stock ]]; then
        tags="${tags}${TAG_RULES[order]}"
    fi
    
    if [[ $lower_content =~ shipping|delivery|logistics ]]; then
        tags="${tags}${TAG_RULES[shipping]}"
    fi
    
    if [[ $lower_content =~ tech|software|system|computer|network ]]; then
        tags="${tags}${TAG_RULES[tech]}"
    fi
    
    if [[ $lower_content =~ support|repair|fix|issue|problem ]]; then
        tags="${tags}${TAG_RULES[support]}"
    fi
    
    if [[ $lower_content =~ bambu|3d.print|printer|filament ]]; then
        tags="${tags}${TAG_RULES[bambu]}"
    fi
    
    if [[ $lower_content =~ form|report|data|spreadsheet ]]; then
        tags="${tags}${TAG_RULES[form]}"
    fi
    
    # Default tag if no specific tags found
    if [ -z "$tags" ]; then
        tags="${TAG_RULES[daily]}"
    else
        # Add daily tag as secondary
        tags="${tags}${TAG_RULES[daily]}"
    fi
    
    echo "$tags"
}

# Main function
main() {
    if [ $# -eq 0 ]; then
        echo "Usage: $0 \"note content\""
        echo "Example: $0 \"Met with client about P1S delivery\""
        exit 1
    fi
    
    local note_content="$1"
    local tags=$(get_tags "$note_content")
    
    # Get current date for diary entry
    local today=$(date "+%Y-%m-%d")
    local weekday=$(date "+%A")
    
    # Check if diary file exists, create if not
    if [ ! -f "$DIARY_FILE" ]; then
        echo "# 📓 My Diary" > "$DIARY_FILE"
        echo "" >> "$DIARY_FILE"
    fi
    
    # Check if today's section exists
    if ! grep -q "## 📅 $today" "$DIARY_FILE"; then
        echo "" >> "$DIARY_FILE"
        echo "## 📅 $today $weekday" >> "$DIARY_FILE"
        echo "" >> "$DIARY_FILE"
        echo "### 📝 Notes" >> "$DIARY_FILE"
        echo "" >> "$DIARY_FILE"
    fi
    
    # Add the note with tags
    echo "- $note_content $tags" >> "$DIARY_FILE"
    
    echo "✅ Note added: \"$note_content\""
    echo "🏷️  Auto-tags: $tags"
    echo "📄 Diary file: $DIARY_FILE"
    
    # If NextCloud sync is configured
    if [ -n "$NEXTCLOUD_SYNC_DIR" ] && [ -d "$NEXTCLOUD_SYNC_DIR" ]; then
        echo "☁️  NextCloud sync available at: $NEXTCLOUD_SYNC_DIR"
        echo "⚠️  Remember to run NextCloud scan if needed"
    fi
}

# Run main function
main "$@"