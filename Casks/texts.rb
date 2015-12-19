cask 'texts' do
  version '1.2'
  sha256 '06a2f7a49bfb25ab0ff830ee92ca03030557f45562ce688a40e52e7069d4e2d6'

  url "http://www.texts.io/Texts-#{version}.dmg"
  name 'Texts'
  appcast 'http://www.texts.io/appcast-osx.xml',
          :sha256 => '47cb5a313278cf0c781d45553449054c0ffac3c0c970f01929f6a92c012e6d7a'
  homepage 'http://www.texts.io'
  license :commercial

  app 'Texts.app'
end
