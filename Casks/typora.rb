cask 'typora' do
  version :latest
  sha256 :no_check

  url "https://www.typora.io/download/typora_#{version}.zip"
  name 'Typora'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
