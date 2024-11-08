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

  if [[ -z $1 ]]; then
    echo "Usage: notes-add <filename>"
    return 1
  fi

  local note_file="$notes_dir/$1"
  local parent_dir=$(dirname "$note_file")
  if [[ ! -d $parent_dir ]]; then
    mkdir -p "$parent_dir"
  fi

  # if [[ -f $note_file ]]; then
  #   echo "Note '$note_file' already exists."
  #   return 1
  # fi

  vim --cmd "cd $notes_dir" -- "$note_file"
}
