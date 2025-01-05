cask "volta" do
  arch arm: "-arm64"

  version "1.18.1"
  sha256 arm:   "2f48cfa27f76b12bbbcac348cc817708c7db7279a2610b6a9991a83a461e99e1",
         intel: "334052571718e70426abcf4c291846765ace90b69c01f8c19938def8c68459db"

  url "https://volta-build.s3.fr-par.scw.cloud/Volta-#{version}#{arch}.dmg",
      verified: "volta-build.s3.fr-par.scw.cloud/"
  name "Volta"
  desc "GitHub issues and notifications"
  homepage "https://volta.net/"

  livecheck do
    url "https://s3.fr-par.scw.cloud/volta-build/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

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
