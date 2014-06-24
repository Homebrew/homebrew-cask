class Transmission < Cask
  version '2.83'
  sha256 '78c90b0cdc4a37064d66bba5976a4e46a778acfd4bf97d5bc18b9aeb21e36a64'

  url "https://transmission.cachefly.net/Transmission-#{version}.dmg"
  appcast 'http://update.transmissionbt.com/appcast.xml'
  homepage 'http://www.transmissionbt.com/'

  link 'Transmission.app'
end
