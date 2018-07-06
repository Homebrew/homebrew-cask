cask 'yt-music' do
  version '1.0.5'
  sha256 'c9fc48b07bb8d8dc5d260ccb396ddcb4b77130fe80342d980e6105880a94a0da'

  url "https://github.com/steve228uk/YouTube-Music/releases/download/#{version}/YT.Music.zip"
  appcast 'https://github.com/steve228uk/YouTube-Music/releases.atom'
  name 'YouTube Music'
  homepage 'https://github.com/steve228uk/YouTube-Music'

  app 'YT Music.app'
end
