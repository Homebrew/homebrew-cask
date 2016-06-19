cask 'tor-messenger' do
  version '0.1.0b6'
  sha256 '07e8edd1451e3e8f96bc56eb848c467ec903e9eaa94920f66f3ecee94bbc743b'

  url "https://dist.torproject.org/tormessenger/#{version}/TorMessenger-#{version}-osx64_en-US.dmg"
  name 'Tor Messenger'
  homepage 'https://blog.torproject.org/blog/tor-messenger-010b6-released'
  license :oss

  app 'Tor Messenger.app'
end
