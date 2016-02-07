cask 'tomighty' do
  version '1.0.1'
  sha256 '14ba9d4bc6e910e1c5bc256de4136db1e3e8d0671318b20c78f586a136a78793'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/tomighty/tomighty-osx/releases/download/v#{version}/Tomighty-#{version}.dmg"
  appcast 'https://github.com/tomighty/tomighty-osx/releases.atom',
          checkpoint: '3ccc1006f6bdba0a3fb7314c23e8089d5acc0edac9e8955315e25a1c56e19d8f'
  name 'Tomighty'
  homepage 'http://www.tomighty.org/'
  license :apache

  app 'Tomighty.app'
end
