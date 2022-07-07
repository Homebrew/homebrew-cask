cask "vysor" do
  version "4.2.3"
  sha256 "4d2ac58a7d0bf7e71dc8d6c4d341e13a7b34ab57fd0f2fbb25e76a6d2cefee76"

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
