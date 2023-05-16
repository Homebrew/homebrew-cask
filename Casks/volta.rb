cask "volta" do
  arch arm: "-arm64"

  version "1.16.0"
  sha256 arm:   "d8b61c70806be20f619b77e18382a0c5877c1768a1d4c835b9ce7c2b6686b0d5",
         intel: "e129f1a2c6e9ff0add209d69397429c034a4cd02093c952c425b7d7eefa7a426"

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
