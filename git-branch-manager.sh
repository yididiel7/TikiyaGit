#!/usr/bin/sh

git_color_text() {
  text=$1

  gum style --foreground "#f14e32" "$text"

}

get_branches() {
  gum choose --no-limit $(git branch --format="%(refname:short)")
}


gum style \
    --border double \
    "Git Branch Manager"

echo "Choose $(git_color_text "branches") to operate on:"
branches=$(get_branches)

echo ""
echo "Choose a $(git_color_text "command"):"
command=$(gum choose rebase delete update)
echo ""
