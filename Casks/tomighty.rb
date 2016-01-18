cask 'tomighty' do
  version '1.0.1'
  sha256 '14ba9d4bc6e910e1c5bc256de4136db1e3e8d0671318b20c78f586a136a78793'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/ccidral/tomighty-osx/releases/download/v#{version}/Tomighty-#{version}.dmg"
  appcast 'https://github.com/ccidral/tomighty-osx/releases.atom',
          checkpoint: '36e70540bb834b720535ad938017acbee8f126c13ea062f20b9c00fc5ad50989'
  name 'Tomighty'
  homepage 'http://www.tomighty.org/'
  license :apache

  app 'Tomighty.app'
end
