cask "ugg" do
  version "1.7.4"
  sha256 "cc8f7339f49632e9afaa764a156a5c2b30461a320f719db10494fa4100765d46"

  url "https://static.bigbrain.gg/electron-app-lol/U.GG-#{version}.dmg",
      verified: "static.bigbrain.gg/electron-app-lol/"
  name "U GG"
  desc "Game analysis and champion picker"
  homepage "https://u.gg/"

  livecheck do
    url "https://static.bigbrain.gg/electron-app-lol/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "U.GG.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.u.gg.sfl*",
    "~/Library/Application Support/U.GG",
    "~/Library/Logs/U.GG",
    "~/Library/Preferences/com.electron.u.gg.plist",
    "~/Library/Saved Application State/com.electron.u.gg.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
