cask "vysor" do
  arch arm: "arm64", intel: "x64"

  version "6.0.23"
  sha256 arm:   "7c67d94b9f2b22886a733d6763e12e730106f409062161e05455caead9898746",
         intel: "6334eb01f0bb400f00edb240f56c4d80d44f84a3412d7063c780f970ad908a1e"

  url "https://github.com/koush/vysor.io/releases/download/v#{version}/Vysor-darwin-#{arch}-#{version}.zip"
  name "Vysor"
  desc "Mirror and control your phone"
  homepage "https://www.vysor.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Vysor.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.vysor.sfl*",
    "~/Library/Application Support/Vysor",
    "~/Library/Caches/com.electron.vysor",
    "~/Library/Caches/com.electron.vysor.ShipIt",
    "~/Library/HTTPStorages/com.electron.vysor",
    "~/Library/Preferences/com.electron.vysor.helper.plist",
    "~/Library/Preferences/com.electron.vysor.plist",
    "~/Library/Saved Application State/com.electron.vysor.savedState",
  ]
end
