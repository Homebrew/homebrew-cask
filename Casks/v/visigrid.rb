cask "visigrid" do
  version "0.36.0"
  sha256 "9cf51463e599a8e72f408d9526982f4f2b38e6cacbedd9e9282122cf139fcafe"

  url "https://github.com/VisiGrid/VisiGrid/releases/download/v#{version}/VisiGrid-macOS-universal.dmg"
  name "VisiGrid"
  desc "Fast, native spreadsheet with GPU-accelerated rendering"
  homepage "https://visigrid.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "VisiGrid.app"

  zap trash: [
    "~/.config/visigrid",
    "~/Library/Application Support/visigrid",
    "~/Library/Preferences/com.visigrid.app.plist",
    "~/Library/Saved Application State/com.visigrid.app.savedState",
  ]
end
