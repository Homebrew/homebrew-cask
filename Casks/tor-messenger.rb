cask 'tor-messenger' do
  version '0.1.0b5'
  sha256 '4daaffb9befc713faa4209a4ebda1a95c6a0d32212b81add1e5a6739489d4cf4'

  url "https://dist.torproject.org/tormessenger/#{version}/TorMessenger-#{version}-osx64_en-US.dmg"
  name 'Tor Messenger'
  homepage 'https://blog.torproject.org/blog/tor-messenger-beta-chat-over-tor-easily'
  license :oss

  app 'Tor Messenger.app'
end
