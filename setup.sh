#!/usr/bin/env bash

echo "Installing GNU coreutils"

brew install coreutils

if [ "$SHELL" == "/bin/bash" ] || [ "$SHELL" == "/opt/homebrew/bin/bash" ]; then
	echo '' >> ~/.bash_profile
	echo '# GNU coreutils' >> ~/.bash_profile
	echo 'export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"' >> ~/.bash_profile
fi

echo "Installing GNU findutils"

brew install findutils

if [ "$SHELL" == "/bin/bash" ] || [ "$SHELL" == "/opt/homebrew/bin/bash" ]; then 
        echo '' >> ~/.bash_profile
        echo '# GNU findutils' >> ~/.bash_profile
        echo 'export PATH="/opt/homebrew/opt/findutils/libexec/gnubin:$PATH"' >> ~/.bash_profile
fi
