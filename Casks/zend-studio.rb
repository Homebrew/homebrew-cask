cask 'zend-studio' do
  version '13.5.1'
  sha256 '66913d1b1e0072d10a4faf48a35a8a0b13cbfb9af789f1818701f38a3977381b'

  url "http://downloads.zend.com/studio-eclipse/#{version}/ZendStudio-#{version}-macosx.cocoa.x86_64.dmg"
  name 'Zend Studio'
  homepage 'https://www.zend.com/en/products/studio/'

  app 'Zend Studio.app'
end
