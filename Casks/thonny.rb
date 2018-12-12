cask 'thonny' do
  version '3.0.8'
  sha256 'df6f513deb7c649dee731c261374020cfbee3567bfb4e9bb6388cac2543b95fe'

  # bitbucket.org/plas/thonny/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/plas/thonny/downloads/thonny-#{version}.dmg"
  appcast 'https://thonny.org/blog/categories/releases.html'
  name 'Thonny'
  homepage 'https://thonny.org/'

  app 'Thonny.app'

  zap trash: '~/.thonny'
end
