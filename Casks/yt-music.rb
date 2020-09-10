cask "yt-music" do
  version "1.0.6"
  sha256 "a49bbdd1a6da40a55de3a356f9f9dc8a8a537bcc4908379ee6b856f1e57bc43b"

  url "https://github.com/steve228uk/YouTube-Music/releases/download/#{version}/YT.Music.zip"
  appcast "https://github.com/steve228uk/YouTube-Music/releases.atom"
  name "YouTube Music"
  desc "App wrapper for music.youtube.com"
  homepage "https://github.com/steve228uk/YouTube-Music"

  app "YT Music.app"
end
