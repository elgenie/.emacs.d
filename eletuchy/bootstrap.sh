#!/bin/sh

set -e
set -x

# A script to download all the emacs packages that are
# 1/ not forked in github
# 2/ not available via the package archives

wget https://raw.github.com/stsquad/emacs_chrome/master/servers/edit-server.el

wget https://raw.github.com/djcb/elisp/master/themes/zenburn-theme.el

git clone git://github.com/mooz/js2-mode/

git clone git://github.com/sellout/emacs-color-theme-solarized.git
