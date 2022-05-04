cask "yt-music" do
  version "1.3.2"
  sha256 "acd98e2f73e92b68e8f7da052801993b240033e1cdfd1cec7c150a1ef8ba2e62"

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
