cask 'tuneskit-m4v-converter' do
  version '5.0.1'
  sha256 'f28d153a3b61bf99983765464278d1aea475165c8e40de218506e390a20257d2'

  url 'https://www.tuneskit.com/TunesKitforMac.dmg'
  appcast 'https://www.tuneskit.com/api/product/version?pid=201'
  name 'TunesKit M4V Converter'
  homepage 'https://www.tuneskit.com/'

  app 'TunesKit M4V Converter.app'
end
