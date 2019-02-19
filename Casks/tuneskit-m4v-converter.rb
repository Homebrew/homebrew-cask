cask 'tuneskit-m4v-converter' do
  version '5.0.0.18'
  sha256 'c6959d6987d29771719242b120ea6048f507c818d653cf0a2b76f44bb14d877e'

  url 'https://www.tuneskit.com/TunesKitforMac.dmg'
  appcast 'https://www.tuneskit.com/api/product/version?pid=201'
  name 'TunesKit M4V Converter'
  homepage 'https://www.tuneskit.com/'

  app 'TunesKit M4V Converter.app'
end
