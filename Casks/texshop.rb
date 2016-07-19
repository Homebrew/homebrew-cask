cask 'texshop' do
  version '3.65'
  sha256 '782dac8494f726bb7b5ff90bd47ba303f6b0ce0e82c6666e963b704dc113bc9b'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.sub('.', '')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: '00f5fac8cc43d5027554dd55e1ca8ba17702e6cb0a0ebc8486ef08b2a94eeef1'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :gpl

  app 'TeXShop.app'
end
