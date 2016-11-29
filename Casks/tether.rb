cask 'tether' do
  version '1.6.2'
  sha256 '3e774fa4f4e25a0be0da5d23c1052701d8f78ae1393172a085058324b21bcbaf'

  url "http://hellotether.com/downloads/Tether_v#{version}.zip"
  name 'Tether'
  homepage 'http://hellotether.com/'

  app 'Tether.app'
end
