cask "yt-music" do
  version "1.2.0"
  sha256 "22f611a45f1c8217c51985ad9a174f431cfb9d1d735c15c6eaa523634b964358"

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
