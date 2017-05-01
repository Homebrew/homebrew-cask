cask 'texts' do
  version '1.4.2'
  sha256 'ce9c9c36683bd97754709d9048688f9597173b95af6c0fc09a7ec7d26f19f0bc'

  url "http://www.texts.io/Texts-#{version}.dmg"
  appcast 'http://www.texts.io/appcast-osx.xml',
          checkpoint: '7de01f155b8d0db94daeb2cde5bf671b9ae7fcf4866dab3c7aaf4b704fd6b57b'
  name 'Texts'
  homepage 'http://www.texts.io/'

  app 'Texts.app'
end
