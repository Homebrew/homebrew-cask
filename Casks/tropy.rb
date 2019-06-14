cask 'tropy' do
  version '1.5.1'
  sha256 'e18f28c5476b51f13ce5af0077fa558b45d126573d2b13ec27c42ba2a525bd76'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
