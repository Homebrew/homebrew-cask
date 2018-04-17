cask 'zend-studio' do
  version '13.6.1'
  sha256 '7a78d4920c97b5df5ed97a305bf97c13387261bc05cfec0a9f665aefed1c5362'

  url "http://downloads.zend.com/studio-eclipse/#{version}/ZendStudio-#{version}-macosx.cocoa.x86_64.dmg"
  name 'Zend Studio'
  homepage 'https://www.zend.com/en/products/studio/'

  app 'Zend Studio.app'
end
