cask 'thonny' do
  version '2.1.22'
  sha256 '678d415e60beb3280b5f43246c0985a8fee5cca8a382a1c2a7fb0777a2a647ef'

  # bitbucket.org/plas/thonny/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/plas/thonny/downloads/thonny-#{version}.dmg"
  appcast 'http://thonny.org/blog/categories/releases.html'
  name 'Thonny'
  homepage 'http://thonny.org/'

  app 'Thonny.app'

  zap trash: '~/.thonny'
end
