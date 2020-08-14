cask "vysor" do
  version "3.1.0"
  sha256 "1bdc7fae124c165da10d8c3826a14ea8d4909ffd7b8605e7f96d49f0de011144"

  # github.com/koush/vysor.io/ was verified as official when first introduced to the cask
  url "https://github.com/koush/vysor.io/releases/download/v#{version}/Vysor-mac-#{version}.zip"
  appcast "https://github.com/koush/vysor.io/releases.atom"
  name "Vysor"
  homepage "https://www.vysor.io/"

  app "Vysor.app"

  zap trash: [
    "~/Library/Application Support/Vysor",
    "~/Library/Caches/com.electron.vysor",
    "~/Library/Caches/com.electron.vysor.ShipIt",
    "~/Library/Preferences/com.electron.vysor.plist",
    "~/Library/Preferences/com.electron.vysor.helper.plist",
    "~/Library/Saved Application State/com.electron.vysor.savedState",
  ]
end
