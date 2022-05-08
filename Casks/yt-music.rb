cask "yt-music" do
  version "1.3.3"
  sha256 "f54fe4892b2df4853f76bdbb94ffe24b3e9878884333da90c3681a52d184cca2"

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
