cask "yt-music" do
  version "1.1.0"
  sha256 "4956a1c17a19b6514536e1de693e6eef33aa377dff43545404a82ea53d6965ba"

  url "https://github.com/steve228uk/YouTube-Music/releases/download/#{version}/YT-Music-#{version}.zip"
  name "YouTube Music"
  desc "App wrapper for music.youtube.com"
  homepage "https://github.com/steve228uk/YouTube-Music"

  app "YT Music.app"
end
