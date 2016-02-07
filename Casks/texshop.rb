cask 'texshop' do
  version '3.59'
  sha256 'ff8fcc6d64550f5cf3f9f6069acce08c55a089c4fa4f8edf5e154539fb07985b'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.sub('.', '')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: 'a20d654b0fbd712d421b6af0cac57f96241298f0fc870ae191c79e50bc5ebfbd'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :gpl

  app 'TeXShop.app'
end
