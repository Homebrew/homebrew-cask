cask "volta" do
  arch arm: "-arm64"

  version "1.17.5"
  sha256 arm:   "853588e826ee3b725d8ff6f859320add27bb9acfb1920c5fa45a59a7c27fe713",
         intel: "b467d0ee9d3d09ae82af99d4f5640eaf49fd1734613b2fd3784776f58f0fc467"

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
