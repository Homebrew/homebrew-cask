cask 'tor-messenger' do
  version '0.1.0b4'
  sha256 '82ddb5f301f70d7ddd5013a6b30f365988d650ef80059cf4172d908b352cb23f'

  url "https://dist.torproject.org/tormessenger/#{version}/TorMessenger-#{version}-osx64_en-US.dmg"
  name 'Tor Messenger'
  homepage 'https://blog.torproject.org/blog/tor-messenger-beta-chat-over-tor-easily'
  license :oss

  app 'Tor Messenger.app'
end
