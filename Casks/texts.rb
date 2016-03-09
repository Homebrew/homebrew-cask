cask 'texts' do
  version '1.3.1'
  sha256 'eef95726f3eea2408ad9f410e71c357476962a5cd87ee0421b0029a9b8f047d9'

  url "http://www.texts.io/Texts-#{version}.dmg"
  appcast 'http://www.texts.io/appcast-osx.xml',
          checkpoint: '79e011daed78006c26693d1735a5a5534a2b18caf8e4eafa218b0ea71da804c6'
  name 'Texts'
  homepage 'http://www.texts.io'
  license :commercial

  app 'Texts.app'
end
