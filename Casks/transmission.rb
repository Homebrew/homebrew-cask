class Transmission < Cask
  version '2.84'
  sha256 '53d08a55a5ca55010d409acb10f0285a649b8879085cad83f2cbcb7faa489ad5'

  url "https://transmission.cachefly.net/Transmission-#{version}.dmg"
  appcast 'http://update.transmissionbt.com/appcast.xml'
  homepage 'http://www.transmissionbt.com/'

  app 'Transmission.app'
end
