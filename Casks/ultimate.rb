cask 'ultimate' do
  version '3.0.4.41'
  sha256 'c49e7f55f427e23b55949f0debdda828e56e3eb4a0a666708f037f12224be776'

  url 'http://download.epubor.com/epubor_ultimate.zip'
  name 'Ultimate Converter'
  homepage 'http://www.epubor.com'
  license :commercial

  container nested: "epubor_ultimate/Ultimate_v#{version}.dmg"

  app 'Ultimate.app'
end
