cask "zush" do
  version "3.8.2"
  sha256 "f494fb15973cc5142fe98312b0a0e3ffba06ae3e9526e2824b017c6195f7d425"

  url "https://zushapp.com/releases/Zush-#{version}.dmg"
  name "Zush"
  desc "AI-powered file renamer and organiser"
  homepage "https://zushapp.com/"

  livecheck do
    url "https://zushapp.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Zush.app"

  uninstall quit: "com.lirik.Zush"

  zap trash: [
    "~/Library/Application Scripts/com.lirik.Zush",
    "~/Library/Application Support/com.lirik.Zush",
    "~/Library/Application Support/Zush",
    "~/Library/Caches/com.lirik.Zush",
    "~/Library/Caches/Zush",
    "~/Library/Containers/com.lirik.Zush",
    "~/Library/HTTPStorages/com.lirik.Zush",
    "~/Library/Preferences/ByHost/com.lirik.Zush.*.plist",
    "~/Library/Preferences/com.lirik.Zush.plist",
    "~/Library/Saved Application State/com.lirik.Zush.savedState",
    "~/Library/WebKit/com.lirik.Zush",
  ]
end
