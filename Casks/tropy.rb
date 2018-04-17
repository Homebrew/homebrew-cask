cask 'tropy' do
  version '1.1.1'
  sha256 '7999c453504e12de525cb2c6f51a3c0d7e8ab1d6636e93318734a534d12c2a2b'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom',
          checkpoint: '5158f64950cee9e470b8c323fe9e849d5ff524a4f48cb9fdc9997af21108e602'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
