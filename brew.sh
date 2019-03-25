#!/usr/bin/env zsh

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# customization
brew cask install spectacle # window size manager
brew cask install macdown   # markdown editor
brew cask install sourcetree # git visualized app
brew cask install sogouinput # sogou input
brew install ncdu # disk usage tool
brew install task # taskwarrior, task management tool
brew install cheat # cheatsheets tool
brew install rbenv # ruby version manager
brew install calcurse # terminal calendar, schedule event, notifications
brew install p7zip # for zip, compress: 7za a test.7z test.txt, extraction: 7za x test.7z , pipe: pg_dump getnews_dev |7za a -si test.7z
brew cask install qq
# brew install asciinema # terminal screen recording as svg
# npm install -g svg-term-cli
brew install fzf # 命令行模糊搜索工具，Ctrl + T开启搜索
brew install cloc # 代码行数统计工具
brew install socat # nc 加强版

## react native
brew install node
brew install watchman


# Remove outdated versions from the cellar.
brew cleanup

# Q&A
# libreadline not found issue, please link to high version to lower version, brew info readline to check readline verion
# ln -s /usr/local/opt/readline/lib/libreadline.8.dylib /usr/local/opt/readline/lib/libreadline.7.dylib

