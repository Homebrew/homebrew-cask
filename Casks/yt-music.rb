cask 'yt-music' do
  version '1.0.3'
  sha256 'b72fccdd965d590dfb0d75af26ac1fd0c1a0abd712db63dba753eaa16f2362b4'

  url "https://github.com/steve228uk/YouTube-Music/releases/download/#{version}/YT.Music.app.zip"
  appcast 'https://github.com/steve228uk/YouTube-Music/releases.atom'
  name 'YouTube Music'
  homepage 'https://github.com/steve228uk/YouTube-Music'

  app 'YT Music.app'
end
