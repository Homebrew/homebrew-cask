cask 'tropy' do
  version '1.3.0'
  sha256 '15542ec6a2df556b44a199c2f129d9843c6c7af3b31b3ef2b6999e6db0d208a7'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
