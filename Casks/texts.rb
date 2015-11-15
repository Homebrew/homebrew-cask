cask :v1 => 'texts' do
  version '1.1'
  sha256 'd536f98a35242006fc58c570777fc3c4d39f415505856d2d752cffdf01ac1e60'

  url "http://www.texts.io/Texts-#{version}.dmg"
  name 'Texts'
  appcast 'http://www.texts.io/appcast-osx.xml',
          :sha256 => 'afd38b8d91cefb771cba00d02b2a0ba2f665a5753e8a66cec64cde82ef0a7cca'
  homepage 'http://www.texts.io'
  license :commercial

  app 'Texts.app'
end
