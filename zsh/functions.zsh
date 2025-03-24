# Colormap
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

function ga.() {
    git add .
    git status
}

function b64decode() {
  echo "$1" | base64 -d | tee >(pbcopy)
}

function b64encode() {
  echo "$1" | base64 | tee >(pbcopy)
}
