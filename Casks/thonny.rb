cask 'thonny' do
  version '3.0.5'
  sha256 '5f1eb4c100b8088a2afdf2aef2342235479f38c175dc4d9952e9bd7d8dd12816'

  # bitbucket.org/plas/thonny/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/plas/thonny/downloads/thonny-#{version}.dmg"
  appcast 'https://thonny.org/blog/categories/releases.html'
  name 'Thonny'
  homepage 'https://thonny.org/'

  app 'Thonny.app'

  zap trash: '~/.thonny'
end
