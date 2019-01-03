cask 'tuneskit-m4v-converter' do
  version '4.3.0.16'
  sha256 '895faefb5cfabbc776f813f7e9e3e040997b90b7b43b961de29cd9783ea5f744'

  url 'https://www.tuneskit.com/TunesKitforMac.dmg'
  appcast 'https://www.tuneskit.com/api/product/version?pid=201'
  name 'TunesKit M4V Converter'
  homepage 'https://www.tuneskit.com/'

  app 'TunesKit M4V Converter.app'
end
