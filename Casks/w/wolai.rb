cask "wolai" do
  arch arm: "-arm64"

  version "1.3.7"
  sha256 arm:   "0cc7544e133faf9b0e97111d231202e566442374c043563b707345b24db8c403",
         intel: "97613e419b8d969567c2608aec2c8db83c29854f55a2a268f8b2ce258896123b"

  url "https://cdn.wostatic.cn/dist/installers/wolai-#{version}#{arch}.dmg"
  name "wolai for mac"
  desc "Cloud notes"
  homepage "https://www.wolai.com/"

  livecheck do
    url "https://static2.wolai.com/dist/installers/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "wolai.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wolai.app.sfl*",
    "~/Library/Application Support/wolai",
    "~/Library/Logs/wolai",
    "~/Library/Preferences/com.wolai.app.plist",
    "~/Library/Saved Application State/com.wolai.app.savedState",
  ]
end
