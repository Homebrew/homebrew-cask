cask "yt-music" do
  version "1.1.1"
  sha256 "e457e3ac9c633fd37bde65d90bb8aa8086c16cfe8d026556e378095f24cc729d"

  url "https://github.com/steve228uk/YouTube-Music/releases/download/#{version}/YT-Music-#{version}.zip"
  name "YouTube Music"
  desc "App wrapper for music.youtube.com"
  homepage "https://github.com/steve228uk/YouTube-Music"

  app "YT Music.app"
end
