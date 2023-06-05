cask "volta" do
  arch arm: "-arm64"

  version "1.17.4"
  sha256 arm:   "37c01995d7d695c252b1294e967e52d47fc6570b97b81471c3ff91445c8560e3",
         intel: "2e4e3f6e7e9f3d7c28246757171366a7a72690a0b72e20f9e942721a86e9aa25"

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
