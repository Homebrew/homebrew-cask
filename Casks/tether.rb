cask :v1 => 'tether' do
  version '1.3.0'
  sha256 '33346da2daaa12678540a1b99a24da77ea008022b04137ecf2f4166998606c6f'

  url "http://hellotether.com/downloads/Tether_v#{version}.zip"
  name 'Tether'
  homepage 'http://hellotether.com/'
  license :gratis

  app 'Tether.app'
end
