cask 'ultimate' do
  version '3.0.9.320'
  sha256 'ef6fefd87ecee86b33284dd5a2d2dbb26f61daea1804e7c2f55817ad94c8f1bc'

  url 'http://download.epubor.com/epubor_ultimate.zip'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  container nested: "epubor_ultimate/Ultimate_v#{version}.dmg"

  app 'Ultimate.app'
end
