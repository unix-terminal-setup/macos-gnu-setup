#!/usr/bin/env bash

echo "Installing GNU coreutils"

brew install coreutils

if [ "$SHELL" == "/bin/bash" ] || [ "$SHELL" == "$HOMEBREW_PREFIX/bin/bash" ]; then
	echo '' >> ~/.bash_profile
	echo '# GNU coreutils' >> ~/.bash_profile
	echo 'export PATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH"' >> ~/.bash_profile
fi

echo "Installing GNU findutils"

brew install findutils

if [ "$SHELL" == "/bin/bash" ] || [ "$SHELL" == "$HOMEBREW_PREFIX/bin/bash" ]; then 
        echo '' >> ~/.bash_profile
        echo '# GNU findutils' >> ~/.bash_profile
        echo 'export PATH="$HOMEBREW_PREFIX/opt/findutils/libexec/gnubin:$PATH"' >> ~/.bash_profile
fi

echo "Installing GNU sed"

brew install gnu-sed

if [ "$SHELL" == "/bin/bash" ] || [ "$SHELL" == "$HOMEBREW_PREFIX/bin/bash" ]; then
        echo '' >> ~/.bash_profile
        echo '# GNU sed' >> ~/.bash_profile
        echo 'export PATH="$HOMEBREW_PREFIX/opt/gnu-sed/libexec/gnubin:$PATH"' >> ~/.bash_profile
fi
