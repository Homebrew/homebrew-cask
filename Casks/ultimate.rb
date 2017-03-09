cask 'ultimate' do
  version '3.0.9.222'
  sha256 '0cf3ec41852aa7578c4d673357aeea01ac531e4f8a867041cc7cf63dab23607a'

  url 'http://download.epubor.com/epubor_ultimate.zip'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  container nested: "epubor_ultimate/Ultimate_v#{version}.dmg"

  app 'Ultimate.app'
end
