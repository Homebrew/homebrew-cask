cask 'thonny' do
  version '3.0.1'
  sha256 '1510524d54c5ce3e16692ff54b88509202358509797f5bb301d8d1c49547084e'

  # bitbucket.org/plas/thonny/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/plas/thonny/downloads/thonny-#{version}.dmg"
  appcast 'https://thonny.org/blog/categories/releases.html'
  name 'Thonny'
  homepage 'https://thonny.org/'

  app 'Thonny.app'

  zap trash: '~/.thonny'
end
