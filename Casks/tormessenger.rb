cask 'tormessenger' do
  version '0.4.0b2'
  sha256 '7b374ca8fa687b7a59858bf5f17923cbdfaae0d1688856c2b8f75c4b67473514'

  url "https://dist.torproject.org/tormessenger/#{version}/TorMessenger-#{version}-osx64_en-US.dmg"
  name 'Tor Messenger'
  homepage 'https://trac.torproject.org/projects/tor/wiki/doc/TorMessenger'

  app 'TorMessenger.app'
end
