cask "yt-music" do
  version "1.3.1"
  sha256 "30d31b070a033d01e19cdd992b3040b39940754461a58a300a0ae07621ec9aad"

  url "https://github.com/steve228uk/YouTube-Music/releases/download/#{version}/YT-Music-#{version}.zip"
  name "YouTube Music"
  desc "App wrapper for music.youtube.com"
  homepage "https://github.com/steve228uk/YouTube-Music"

  app "YT Music.app"

  zap trash: [
    "~/Library/Caches/uk.co.wearecocoon.YT-Music",
    "~/Library/Preferences/uk.co.wearecocoon.YT-Music.plist",
    "~/Library/WebKit/uk.co.wearecocoon.YT-Music",
  ]
end
