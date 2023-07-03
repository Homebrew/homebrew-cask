cask "vysor" do
  version "5.0.7"
  sha256 "b3db71a61e6b46df7242038335b0ff6be961fcfd3e31250fda0488236bcadd6f"

  url "https://github.com/koush/vysor.io/releases/download/v#{version}/Vysor-mac-#{version}.zip",
      verified: "github.com/koush/vysor.io/"
  name "Vysor"
  desc "Mirror and control your phone"
  homepage "https://www.vysor.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Vysor.app"

  zap trash: [
    "~/Library/Application Support/Vysor",
    "~/Library/Caches/com.electron.vysor",
    "~/Library/Caches/com.electron.vysor.ShipIt",
    "~/Library/Preferences/com.electron.vysor.helper.plist",
    "~/Library/Preferences/com.electron.vysor.plist",
    "~/Library/Saved Application State/com.electron.vysor.savedState",
  ]
end
