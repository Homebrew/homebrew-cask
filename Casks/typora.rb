cask :v1 => 'typora' do
  version :latest
  sha256 :no_check

  url 'http://typora.io/download/typora_latest.zip'
  name 'Typora'
  appcast 'http://typora.io/download/dev_update.xml',
          :sha256 => 'af9b77a097850693934f4c560c2bf673a4259d477a399f1c3baeaeb259cfbaf7'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
