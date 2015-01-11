# brew install
%w(openssl git tig imagemagick mysql ricty zsh tmux mecab mecab-ipadic tree peco).each do |pkg|
  package pkg do
    action :install
    only_if "brew info #{ pkg } | grep -q 'Not Installed'"
  end
end

