cask 'tropy' do
  version '1.4.0'
  sha256 'f440af13f7215bdaf4ba927aface680c8d99e8d82d58aa904d16e51a0d52ec8b'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
