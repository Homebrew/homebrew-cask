cask "wail" do
  version "0.2025.03.03"
  sha256 "db042c83e8617f9e288207fe12f10ccc8af31ac70e07d1d01953c0b95a5ca835"

  url "https://github.com/machawk1/wail/releases/download/v#{version}/WAIL_v#{version}_macOS.dmg"
  name "WAIL"
  desc "Web Archiving Integration Layer: One-Click User Instigated Preservation"
  homepage "https://github.com/machawk1/wail"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "WAIL.app"

  zap trash: [
    "~/Library/Application Support/WAIL",
    "~/Library/Preferences/com.matkelly.wail.plist",
    "~/Library/Preferences/WAIL_cli.plist",
    "~/Library/Saved Application State/com.matkelly.wail.savedState",
  ]
end
