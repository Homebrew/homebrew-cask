cask 'ultimate' do
  version '3.0.10.508'
  sha256 '31db9176b93e6b1ac9b35e2aa6f9768f4bfbb91f2238aad0d8079894f2576f77'

  url 'http://download.epubor.com/epubor_ultimate.zip'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  container nested: "epubor_ultimate/Ultimate_v#{version}.dmg"

  app 'Ultimate.app'
end
