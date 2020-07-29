cask 'tropy' do
  version '1.7.0'
  sha256 '97aa6280cfd094c1d0136fcae40874e91bad33975e80df37dde9a1bd29026a37'

  # github.com/tropy/tropy/ was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
