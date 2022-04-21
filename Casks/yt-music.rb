cask "yt-music" do
  version "1.3.0"
  sha256 "a38281f1b994829dadee5063345da794ce0116fa49b815cb58e903b3987e3d33"

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
