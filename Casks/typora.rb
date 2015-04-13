cask :v1 => 'typora' do
  version :latest
  sha256 :no_check

  url 'http://typora.io/download/typora_latest.zip'
  name 'Typora'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
