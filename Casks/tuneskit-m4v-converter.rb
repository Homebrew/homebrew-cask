cask 'tuneskit-m4v-converter' do
  version '5.0.0.20'
  sha256 '21056fc651993620a3a67e605fba8fd3bf695cd76a6b63d3ae43124300e8c3d9'

  url 'https://www.tuneskit.com/TunesKitforMac.dmg'
  appcast 'https://www.tuneskit.com/api/product/version?pid=201'
  name 'TunesKit M4V Converter'
  homepage 'https://www.tuneskit.com/'

  app 'TunesKit M4V Converter.app'
end
