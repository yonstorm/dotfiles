#!/usr/bin/env bash
#
# Copyright (C) 2018 Erlend Ekern <dev@ekern.me>
#
# Distributed under terms of the MIT license.


# The window to select after tmux has finished setting up
DEFAULT_WINDOW=1
# The pane to select after tmux has finished setting up
DEFAULT_PANE=0

# User-defined templates
if [ "$TEMPLATE_NAME" = "dev" ]; then
  # Creates one window with three panes, with commands in the first and second pane
  WORKSPACE="~/projects/${SESSION_NAME}"
  declare -A WINDOWS=(
    [1]="${SESSION_NAME};$WORKSPACE;echo pane 1/3;echo pane 2/3;;"
  )
else
  # This is the default theme to use when no user templates matched the given session name
  # Creates one three-paned window named 'dev' and sets WORKSPACE to the folder the script was called from
  WORKSPACE="$PWD"
  declare -A WINDOWS=(
    [1]="dev;$WORKSPACE;;;;"
  )
fi
