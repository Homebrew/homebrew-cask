cask "vysor" do
  version "4.1.62"
  sha256 "68eacfe2832a34b62e37111a9ae19011e5b6ffaa5964762be6e45ba9a6846132"

  url "https://github.com/koush/vysor.io/releases/download/v#{version}/Vysor-mac-#{version}.zip",
      verified: "github.com/koush/vysor.io/"
  name "Vysor"
  desc "Mirror and control your phone"
  homepage "https://www.vysor.io/"

  livecheck do
    url "http://vysornuts.clockworkmod.com/download/mac"
    strategy :header_match
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
