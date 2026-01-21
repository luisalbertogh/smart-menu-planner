#!/bin/bash
INPUT=$(cat)
TOOL_NAME=$(echo "$INPUT" | jq -r '.toolName')
TOOL_ARGS=$(echo "$INPUT" | jq -r '.toolArgs')

# Log the tool use
echo "$(date): Tool=$TOOL_NAME Args=$TOOL_ARGS" >> logs/tool-usage.log
