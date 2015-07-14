cask :v1 => 'tether' do
  version '1.6.2'
  sha256 'eee8e71c1b2c55d9f476ba6230bff977136a9fc871a2d837600f6aad020d9591'

  url "http://hellotether.com/downloads/Tether_v#{version}.zip"
  name 'Tether'
  homepage 'http://hellotether.com/'
  license :gratis

  app 'Tether.app'
end
