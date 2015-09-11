cask :v1 => 'zendstudio' do
  version '12.0.1'
  sha256 'e8534e6b550e075b5da42c5b1789e82b3c9e04c739f055c6980783742f6e1160'

  url "http://downloads.zend.com/studio-eclipse/#{version}/ZendStudio-#{version}-macosx.cocoa.x86_64.dmg"
  name 'Zend Studio'
  homepage 'https://www.zend.com/en/products/studio/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ZendStudio.app'
end
