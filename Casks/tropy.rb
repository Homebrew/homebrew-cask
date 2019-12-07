cask 'tropy' do
  version '1.6.0'
  sha256 '2c061c7dc96f79d45039034f639d9143cb7903a6450faf0fe54c6696d6a0cbc9'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
