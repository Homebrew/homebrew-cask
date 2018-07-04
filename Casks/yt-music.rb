cask 'yt-music' do
  version '1.0.4'
  sha256 'd69f7e854b5db387f04c8eee2e2479cfe71368d3c6c05b2b736645e6ba6db539'

  url "https://github.com/steve228uk/YouTube-Music/releases/download/#{version}/YTMusic.zip"
  appcast 'https://github.com/steve228uk/YouTube-Music/releases.atom'
  name 'YouTube Music'
  homepage 'https://github.com/steve228uk/YouTube-Music'

  app 'YT Music.app'
end
