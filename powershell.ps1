# Download $uri and automatically detect the filename
#   Split-Path -Leaf: Filename with extension
#   Split-Path -LeafBase: Filename without extension
Invoke-WebRequest -uri "$uri" -OutFile $(Split-Path -Path "$uri" -Leaf)

# Disable 260 character path limit aka "Enable LongPaths"
# https://docs.microsoft.com/en-us/windows/win32/fileio/maximum-file-path-limitation?tabs=powershell#enable-long-paths-in-windows-10-version-1607-and-later
New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem" -Name "LongPathsEnabled" -Value 1 -PropertyType DWORD -Force