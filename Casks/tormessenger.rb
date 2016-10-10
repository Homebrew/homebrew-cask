cask 'tormessenger' do
  version '0.2.0b2'
  sha256 '58b3e8e2c05b3f07cb2920d4a1c07c7bf9ffb721af49c7e160e20e4030f042cf'

  url "https://dist.torproject.org/tormessenger/#{version}/TorMessenger-#{version}-osx64_en-US.dmg"
  name 'Tor Messenger'
  homepage 'https://trac.torproject.org/projects/tor/wiki/doc/TorMessenger'

  app 'TorMessenger.app'
end
