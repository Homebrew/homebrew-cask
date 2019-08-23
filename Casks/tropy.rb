cask 'tropy' do
  version '1.5.3'
  sha256 'dc1018fe1ecfec17459695635920db01f7f3dbb86377cbb405bb40f14a446728'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
