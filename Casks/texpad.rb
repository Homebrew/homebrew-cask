class Texpad < Cask
  version '1.6.13'
  sha256 'e3fa71a11747d9698f72a8b9b6d5bcfca83f71ddec3dd69c3749362d47e85dcb'

  url 'https://cloud.texpadapp.com/bundles/Texpad_1_6_13.zip'
  appcast 'https://www.texpadapp.com/static-collected/upgrades/texpadappcast.xml'
  homepage 'https://www.texpadapp.com/osx'

  app 'Texpad.app'
end
