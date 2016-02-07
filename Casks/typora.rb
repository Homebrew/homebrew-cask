cask 'typora' do
  version '0.9.8.1'
  sha256 '9bc95f071f7376004a74ab04a63bf46133669364bcc9467247aa84c42a6964d7'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'f39ad35403885c20393348ce6161f3a4fc61f433f89f7f56658f7f564fde6770'
  name 'Typora'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
