cask :v1 => 'tomighty' do
  version '1.0.1'
  sha256 '14ba9d4bc6e910e1c5bc256de4136db1e3e8d0671318b20c78f586a136a78793'

  url "https://tomighty.googlecode.com/files/Tomighty-#{version}.dmg"
  homepage 'http://www.tomighty.org/'
  license :oss

  app 'Tomighty.app'
end
