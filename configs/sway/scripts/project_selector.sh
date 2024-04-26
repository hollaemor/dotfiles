#!/usr/bin/bash
#
# given a folder path, use wmenu to list the folders in there.
# upon selection of a folder, list the subfolders of said folder.
# Once a subfolder has been selected, check if a terminal is already open for said folder (search using title or class).
# If so, try to nagivate to said terminal. 
# If not, nagivate to the folder, if there's a python file in any of it's directories or if it's in a list of maintained
# python projects, activate its pyenv, navigate to the folder and launch Neovim
# before launching Neovim, do a git stash, switch to master/main, do a pull if there's a remote folder, then do a stash pop
#

project_path="$HOME/Documents/code/github.com/hollaemor/playground/"


function getProjects()
{
  projects=$(ls -A "$project_path" | wofi -d -p "Project Root:")
  if [ -n "$projects" ]
  then
    chosen=$(ls -A "$project_path$projects" | wofi -d -p "Select project:")
    if [ -n "$chosen" ]; then
      # check if window is already open
      title="$chosen" # update to include programming info in title or window class
      window=$(swayr get-windows-as-json -m "[title=\"$title\"]")
      if [ "$window" != "[]" ]
     then
       # window exists. Move focus to it
       swaymsg "[title=\"$title\"] focus"
      else
        # build kitty session file and laucn project
        file=$(mktemp)
        printf "layout stack\n" >> "$file"
        echo "cd $project_path$projects/$chosen" >> "$file"
        echo "launch --title '$chosen' nvim ." >> "$file"
        # printf "\n" >> "$file"
        # printf "\nlaunch nvim\n" >> "$file"

        kitty --session "$file"
      fi
    fi
  fi
}

getProjects
