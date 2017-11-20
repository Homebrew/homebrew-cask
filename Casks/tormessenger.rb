cask 'tormessenger' do
  version '0.5.0b1'
  sha256 '67f9f0538a24f3463df1e35368b8fe05817620d17fa7148e12e3b33efc24275f'

  url "https://dist.torproject.org/tormessenger/#{version}/TorMessenger-#{version}-osx64_en-US.dmg"
  name 'Tor Messenger'
  homepage 'https://trac.torproject.org/projects/tor/wiki/doc/TorMessenger'

  auto_updates true

  app 'TorMessenger.app'
end
