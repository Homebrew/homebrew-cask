class Texpad < Cask
  version '1.6.13'
  sha256 'e3fa71a11747d9698f72a8b9b6d5bcfca83f71ddec3dd69c3749362d47e85dcb'

  url "https://cloud.texpadapp.com/bundles/Texpad_#{version.gsub('.','_')}.zip"
  appcast 'https://www.texpadapp.com/static-collected/upgrades/texpadappcast.xml',
          :sha256 => 'a8522a4533df93fbf9d50489aa5f1c91bb01916faebd81ee20f56ea96dad8d97'
  homepage 'https://www.texpadapp.com/osx'
  license :unknown

  app 'Texpad.app'
end
