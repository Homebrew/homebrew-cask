cask 'typora' do
  version :latest
  sha256 :no_check

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'f39ad35403885c20393348ce6161f3a4fc61f433f89f7f56658f7f564fde6770'
  name 'Typora'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
