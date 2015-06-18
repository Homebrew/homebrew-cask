cask :v1 => 'tomighty' do
  version '1.0.1'
  sha256 '14ba9d4bc6e910e1c5bc256de4136db1e3e8d0671318b20c78f586a136a78793'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/ccidral/tomighty-osx/releases/download/v#{version}/Tomighty-#{version}.dmg"
  appcast 'https://github.com/ccidral/tomighty-osx/releases.atom'
  name 'Tomighty'
  homepage 'http://www.tomighty.org/'
  license :apache

  app 'Tomighty.app'
end
