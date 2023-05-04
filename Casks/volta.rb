cask "volta" do
  arch arm: "-arm64"

  version "1.15.0"
  sha256 intel: "75b85ccd92474dfd5f15f3b83e1148b891551d0eccddae073e84e290d2b1edaf",
         arm:   "7c73cd19c9622db1039b8357c0bd04d11c1062f8cf85013bc7641a70da4cfaff"

  url "https://volta-build.s3.fr-par.scw.cloud/Volta#{arch}-#{version}.dmg",
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
