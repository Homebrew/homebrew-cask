class Texts < Cask
  version '0.20'
  sha256 'b64e1f403deae3dd89eb004df0259b3e62ab122f2add6fee0612cdc43820989c'

  url "http://www.texts.io/Texts-#{version}.dmg"
  appcast 'http://www.texts.io/appcast-osx.xml'
  homepage 'http://www.texts.io'

  app 'Texts.app'
end
