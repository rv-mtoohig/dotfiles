function notes() {
  local notes_dir="$HOME/Notes"
  local file_selected

  if [[ -n $1 ]]; then
    file_selected=$(find "$notes_dir" -type f | fzf --query="$1" --select-1 --exit-0)
  else
    file_selected=$(find "$notes_dir" -type f | fzf)
  fi

  if [[ -n $file_selected ]]; then
    vim --cmd "cd $notes_dir" -- "$file_selected"
  else
    echo "No file selected or found."
    return 1
  fi
}

function notes-add() {
  local notes_dir="$HOME/Notes"
  local sub_dir=""

  if [[ -z $1 ]]; then
    echo "Usage: notes-add \"My New Note\""
    return 1
  fi
  local title="$1"

  if [[ -n $2 ]]; then
    sub_dir="/$2"
  fi

  # Create slug from title: lowercase, replace spaces with hyphens, remove special chars
  local basename=$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/-\+/-/g' | sed 's/^-\|-$//g')
  local note_file="$notes_dir$sub_dir/$basename.md"
  local parent_dir=$(dirname "$note_file")
  if [[ ! -d $parent_dir ]]; then
    mkdir -p "$parent_dir"
  fi

  # Get current date in YYYY-MM-DD format
  local today=$(date +%Y-%m-%d)

  if [[ -f $note_file ]]; then
    echo "Error: A note with title '$title' already exists at '$note_file'"
    return 1
  fi

  # Create note with template
  cat > "$note_file" << EOL
---
title: $title
created: $today
tags:
---

EOL

  vim --cmd "cd $notes_dir" -- "$note_file"
}

function notes-add-tmp() {
  notes-add "$(date '+%Y-%m-%d')" "tmp"
}

function notes-add-lesson() {
  notes-add "$1" "lessons"
}
