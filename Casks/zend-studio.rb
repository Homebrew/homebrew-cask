cask 'zend-studio' do
  version '13.0.0'
  sha256 '3ed2492801c54fd7b1ec225d4824fb7609a674b35a5d8f437fdf3218cfd98067'

  url "http://downloads.zend.com/studio-eclipse/#{version}/ZendStudio-#{version}-macosx.cocoa.x86_64.dmg"
  name 'Zend Studio'
  homepage 'https://www.zend.com/en/products/studio/'
  license :commercial

  app 'Zend Studio.app'
end
