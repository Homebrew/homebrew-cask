cask 'tormessenger' do
  version '0.3.0b2'
  sha256 '14b9d7afab95963b419d1191304ef1ce6abf5af0f2b1d0eab105e05e0b31f3c1'

  url "https://dist.torproject.org/tormessenger/#{version}/TorMessenger-#{version}-osx64_en-US.dmg"
  name 'Tor Messenger'
  homepage 'https://trac.torproject.org/projects/tor/wiki/doc/TorMessenger'

  app 'TorMessenger.app'
end
