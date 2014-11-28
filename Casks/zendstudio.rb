cask :v1 => 'zendstudio' do
  version '10.6.1'
  sha256 '98cafacf5e2f08ae22561b4f9c756400e3c28202f1e97c345357816d3b38b40d'

  url "http://downloads.zend.com/studio-eclipse/#{version}/ZendStudio-#{version}-macosx.cocoa.x86_64.dmg"
  homepage 'http://www.zend.com/en/products/studio/'
  license :unknown

  app 'ZendStudio.app'
end
