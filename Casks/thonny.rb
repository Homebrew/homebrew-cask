cask 'thonny' do
  version '2.1.21'
  sha256 '7ad826889b89923cc995b828e02ac95ca876e3a7d2f97616985ef20ac88c7d37'

  # bitbucket.org/plas/thonny/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/plas/thonny/downloads/thonny-#{version}.dmg"
  appcast 'http://thonny.org/blog/categories/releases.html'
  name 'Thonny'
  homepage 'http://thonny.org/'

  app 'Thonny.app'

  zap trash: '~/.thonny'
end
