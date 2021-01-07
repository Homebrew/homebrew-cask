cask "vysor" do
  version "3.1.4"
  sha256 "dc77dc49179ff0381a62cd2301dbc012bc026381b11d70410cce638ca3211c21"

  url "https://github.com/koush/vysor.io/releases/download/v#{version}/Vysor-mac-#{version}.zip",
      verified: "github.com/koush/vysor.io/"
  name "Vysor"
  homepage "https://www.vysor.io/"

  livecheck do
    url :url
    strategy :git
  end

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
