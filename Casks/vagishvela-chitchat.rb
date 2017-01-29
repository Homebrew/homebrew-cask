cask 'vagishvela-chitchat' do
  version '2.5.2'
  sha256 '803f91fe294d232af74fbe37abe4acaea068427c5b10cdc9a774fe0be49c7809'

  url "https://github.com/VagishVela/ChitChat/releases/download/v#{version}/ChitChat.zip"
  appcast 'https://github.com/VagishVela/ChitChat/releases.atom',
          checkpoint: 'c4b29a02d3c81e35f973982c9df21b67292c834cd0590b79db1d35094ddb7d64'
  name 'ChitChat'
  homepage 'https://github.com/VagishVela/ChitChat'

  app 'ChitChat.app'
end
