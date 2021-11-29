# Download $uri and automatically detect the filename
#   Split-Path -Leaf: Filename with extension
#   Split-Path -LeafBase: Filename without extension
Invoke-WebRequest -uri "$uri" -OutFile $(Split-Path -Path "$uri" -Leaf)