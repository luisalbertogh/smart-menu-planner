#!/bin/bash

# Keep only the 4 most recent menu plans
cd "menu_plans" || exit 0 # Exit if directory does not exist
ls -1 | sort -r | tail -n +5 | xargs -r rm -f --

cd "../recipes" || exit 0 # Exit if directory does not exist
ls -1 | sort -r | tail -n +5 | xargs -r rm -rf --
