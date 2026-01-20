#!/bin/bash
INPUT=$(cat)
ERROR_MSG=$(echo "$INPUT" | jq -r '.error.message')
ERROR_NAME=$(echo "$INPUT" | jq -r '.error.name')

echo "$(date): [$ERROR_NAME] $ERROR_MSG" >> errors.log
