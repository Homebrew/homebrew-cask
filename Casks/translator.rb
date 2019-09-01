cask 'translator' do
  version '1.0'
  sha256 :no_check

  url "https://github.com/Jinxiansen/Translator/releases/download/#{version}/Translator.app.zip"
  appcast 'https://github.com/Jinxiansen/Translator/releases.atom'
  name 'Translator'
  homepage 'https://github.com/Jinxiansen/Translator/'

  auto_updates true

  app 'Translator.app'

  uninstall pkgutil: 'com.jinxiansen.Translator'
end
