cask 'tropy' do
  version '1.4.3'
  sha256 'bd18f29a2177f4326b491639ae582763dd8eaa8801744c27fb0ae7c55ab3e065'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
