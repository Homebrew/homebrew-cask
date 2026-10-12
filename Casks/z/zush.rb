cask "zush" do
  version "3.16.1"
  sha256 "fb90f87f19c928b142b879a3fcfffcdb84a9e5bca2a0cd51177c31d93522120a"

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
