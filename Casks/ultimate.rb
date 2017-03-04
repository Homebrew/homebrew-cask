cask 'ultimate' do
  version '3.0.8.1129'
  sha256 'a1f57a8a593f3d8b2502526d08d69a19431c60ee9923e9a3029e9556884dd943'

  url 'http://download.epubor.com/epubor_ultimate.zip'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  container nested: "epubor_ultimate/Ultimate_v#{version}.dmg"

  app 'Ultimate.app'
end
