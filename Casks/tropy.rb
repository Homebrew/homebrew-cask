cask 'tropy' do
  version '1.4.4'
  sha256 '52e2f6642b19bdb9a1fd36d538f84888c110261dd05bda2707c7c3dcf0a984f6'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
