cask 'tormessenger' do
  version '0.4.0b3'
  sha256 'fdd787a8f1a3e8097e5d88eb6a3aa9d39006f3617e22aa47ab4374b9791c3475'

  url "https://dist.torproject.org/tormessenger/#{version}/TorMessenger-#{version}-osx64_en-US.dmg"
  name 'Tor Messenger'
  homepage 'https://trac.torproject.org/projects/tor/wiki/doc/TorMessenger'

  app 'TorMessenger.app'
end
