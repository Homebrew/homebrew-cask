cask 'texshop' do
  version '3.59'
  sha256 'ff8fcc6d64550f5cf3f9f6069acce08c55a089c4fa4f8edf5e154539fb07985b'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.sub('.', '')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          :sha256 => '1bc33bfa9eb4cc5d540b5cc2653b8172dd3eead094bc3fbf2b950df6f65c73c2'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :gpl

  app 'TeXShop.app'
end
