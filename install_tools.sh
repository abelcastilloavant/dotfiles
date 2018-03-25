# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Download sobole theme and connect it to zsh
git clone https://github.com/sobolevn/sobole-zsh-theme.git ~/dev
ln -s ~/dev/sobole-zsh-theme/sobole.zsh-theme ~/.oh-my-zsh/custom/themes/sobole.zsh-theme

# Download send plugin for zsh
git clone git@github.com:robertzk/send.zsh.git ~/.oh-my-zsh/custom/plugins/send

# Install brew
xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install ag
brew install the_silver_searcher

# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install vim plugins
(
  cd ~/.vim/bundle && \
    git clone git@github.com:ntpeters/vim-better-whitespace.git && \
    git clone git@github.com:plasticboy/vim-markdown
)
