cask 'vagishvela-chitchat' do
  version '2.5.2'
  sha256 '803f91fe294d232af74fbe37abe4acaea068427c5b10cdc9a774fe0be49c7809'

  url "https://github.com/VagishVela/ChitChat/releases/download/v#{version}/ChitChat.zip"
  appcast 'https://github.com/VagishVela/ChitChat/releases.atom'
  name 'ChitChat'
  homepage 'https://github.com/VagishVela/ChitChat'

  app 'ChitChat.app'
end
