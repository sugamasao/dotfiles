# brew install
%w(
  openssl
  git
  tig
  hub
  imagemagick
  mysql
  zsh
  tmux
  mecab
  mecab-ipadic
  tree
  poppler
).each do |pkg|
  package pkg do
    action :install
    only_if "brew info #{ pkg } | grep -qi 'Not installed'"
  end
end

## using tap repository
%w(sanemat/font peco/peco).each do |tap_name|
  execute "using tap #{ tap_name }" do
    command "brew tap #{ tap_name }"
    not_if "brew tap | grep -q '#{ tap_name }'"
  end
end

%w(ricty peco).each do |pkg|
  package pkg do
    action :install
    only_if "brew info #{ pkg } | grep -qi 'Not installed'"
  end
end

