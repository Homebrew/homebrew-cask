class Tagger < Cask
  version '1.8.0.7'
  sha256 'a4745dcf88f1691d2c681a87e6cfb6326200b6a2d9dfb53c2c62c67905a09e16'

  url 'https://github.com/Bilalh/Tagger/releases/download/1.8.0/Tagger_1.8.0.7.zip'
  appcast 'http://bilalh.github.com/sparkle/tagger/appcast.xml'
  homepage 'http://bilalh.github.io/projects/tagger/'

  app 'Tagger.app'
end
