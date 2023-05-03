cask "volta" do
  version "1.15.0"
  sha256 "75b85ccd92474dfd5f15f3b83e1148b891551d0eccddae073e84e290d2b1edaf"

  url "https://volta-build.s3.fr-par.scw.cloud/Volta-#{version}.dmg",
      verified: "volta-build.s3.fr-par.scw.cloud/"
  name "Volta"
  desc "GitHub issues and notifications"
  homepage "https://volta.net/"

  livecheck do
    url "https://volta.net/changelog"
    regex(%r{/changelog/v?(\d+(?:\.\d+)+)})
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
