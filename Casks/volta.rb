cask "volta" do
  arch arm: "-arm64"

  version "1.16.1"
  sha256 arm:   "3b8ed62c6c7dd0ae775c3b1f7ea4f85fb15d9285a12c3d3ec0ca9d679ac228ed",
         intel: "21601cc6fedf84edb017a9301e6e67e0eb3961e31a3651685da65b0b1d3bc1aa"

  url "https://volta-build.s3.fr-par.scw.cloud/Volta-#{version}#{arch}.dmg",
      verified: "volta-build.s3.fr-par.scw.cloud/"
  name "Volta"
  desc "GitHub issues and notifications"
  homepage "https://volta.net/"

  livecheck do
    url "https://s3.fr-par.scw.cloud/volta-build/latest-mac.yml"
    strategy :electron_builder
  end

  app "Volta.app"

  uninstall quit: "com.volta.net"

  zap trash: [
    "~/Library/Application Support/volta-app",
    "~/Library/Caches/com.volta.net",
    "~/Library/Caches/com.volta.net.ShipIt",
    "~/Library/Preferences/com.volta.net.plist",
    "~/Library/Saved Application State/com.volta.net.savedState",
  ]
end
