#!/usr/bin/env bash

# Check if macos

git help | echo "Git instaled." || echo "Error: install git."

curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/shinokada/macgnu/main/macgnu | bash -s install

echo 'Adding gnu utils to path: . ~/.macgnu added to ~/.bash_profile and ~/.zshrc'

add_gnu_path() {
	echo '# macgnu' >> ~/.bash_profile
	echo 'if [ -f "$HOME/.macgnu" ]; then' >> ~/.bash_profile
	echo '. ~/.macgnu' >> ~/.bash_profile
	echo 'fi' >> ~/.bash_profile
}

add_gnu_path ~/.bash_profile
add_gnu_path ~/.zshrc
