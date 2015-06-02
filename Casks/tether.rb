cask :v1 => 'tether' do
  version '1.5.14'
  sha256 '3c6b8a822b25fcc600ef05bf5b6025cec58efbf3dc37790a2eebf0320a68384e'

  url "http://hellotether.com/downloads/Tether_v#{version}.zip"
  name 'Tether'
  homepage 'http://hellotether.com/'
  license :gratis

  app 'Tether.app'
end
