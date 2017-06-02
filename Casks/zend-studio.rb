cask 'zend-studio' do
  version '13.6.0'
  sha256 '4f561a0f4aceb91478ea1c78bcbf61be69bfd29e7e3b855698f8d06f8cde518a'

  url "http://downloads.zend.com/studio-eclipse/#{version}/ZendStudio-#{version}-macosx.cocoa.x86_64.dmg"
  name 'Zend Studio'
  homepage 'https://www.zend.com/en/products/studio/'

  app 'Zend Studio.app'
end
