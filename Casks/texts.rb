cask :v1 => 'texts' do
  version '1.0'
  sha256 '6f078d6bb6c0d8f8c49ca8206e1f82ac8472ebac94aaaece7a7df1eee769ecc1'

  url "http://www.texts.io/Texts-#{version}.dmg"
  name 'Texts'
  appcast 'http://www.texts.io/appcast-osx.xml',
          :sha256 => 'afd38b8d91cefb771cba00d02b2a0ba2f665a5753e8a66cec64cde82ef0a7cca'
  homepage 'http://www.texts.io'
  license :commercial

  app 'Texts.app'
end
