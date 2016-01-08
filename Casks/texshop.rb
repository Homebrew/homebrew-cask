cask 'texshop' do
  version '3.59'
  sha256 'ff8fcc6d64550f5cf3f9f6069acce08c55a089c4fa4f8edf5e154539fb07985b'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.sub('.', '')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          :sha256 => '4acc9e86aa41ae4a9c1f525d05bcc67486d4fab134b52b1c9d1a96e1be3ac158'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :gpl

  app 'TeXShop.app'
end
