cask 'tormessenger' do
  version '0.3.0b1'
  sha256 'a0b8968271a82f840104630bc61ad811e755b97afcf1686070c05308ad08f492'

  url "https://dist.torproject.org/tormessenger/#{version}/TorMessenger-#{version}-osx64_en-US.dmg"
  name 'Tor Messenger'
  homepage 'https://trac.torproject.org/projects/tor/wiki/doc/TorMessenger'

  app 'TorMessenger.app'
end
