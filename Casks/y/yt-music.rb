cask "yt-music" do
  version "1.3.3"
  sha256 "f54fe4892b2df4853f76bdbb94ffe24b3e9878884333da90c3681a52d184cca2"

  url "https://github.com/steve228uk/YouTube-Music/releases/download/#{version}/YT-Music-#{version}.zip"
  name "YouTube Music"
  desc "App wrapper for music.youtube.com"
  homepage "https://github.com/steve228uk/YouTube-Music"

  livecheck do
    url "https://raw.githubusercontent.com/steve228uk/YouTube-Music/master/Appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "YT Music.app"

  zap trash: [
    "~/Library/Caches/uk.co.wearecocoon.YT-Music",
    "~/Library/HTTPStorages/uk.co.wearecocoon.YT-Music",
    "~/Library/HTTPStorages/uk.co.wearecocoon.YT-Music.binarycookies",
    "~/Library/Preferences/uk.co.wearecocoon.YT-Music.plist",
    "~/Library/Saved Application State/uk.co.wearecocoon.YT-Music.savedState",
    "~/Library/WebKit/uk.co.wearecocoon.YT-Music",
  ]
end
