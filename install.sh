/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask

brew tap caskroom/versions

brew update

brew install zsh zsh-completions
brew install zsh-syntax-highlighting

brew install coreutils
brew install gnu-sed

brew install wget
brew install git svn
brew install exa
brew install openssl
brew install macvim
brew install npm
brew install desk

brew cask install iterm2

brew cask install java

brew cask install java8

brew cask install caffeine

brew cask install atom

brew install scala sbt

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# turn on finder to show hidden files
defaults write com.apple.finder AppleShowAllFiles YES

sh fonts/install.sh
