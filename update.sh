#!/bin/bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
PROJECT_DIR=$(dirname "$SCRIPT_DIR")

opencode run --model opencode/big-pickle "Use github CLI to update information in this repository. First get all public repositories of the user, then for each repository if not in the NOT_MENTION file mention it in the README.md file. If there was no recent commits add it to DONE and if there was add it to WIP section of the README.md file"

