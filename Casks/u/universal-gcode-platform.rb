cask "universal-gcode-platform" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.20"
  sha256 arm:   "2989b9f15a9ad85e5218165ffcbb427a8858e1790f6c5daaec922bb6ed5a405b",
         intel: "28749c41ae345873ff8fd3a509631d919e086166cb4e065bf80b9caed11c62e8"

  url "https://github.com/winder/Universal-G-Code-Sender/releases/download/v#{version}/macosx-#{arch}-ugs-platform-app-#{version}.dmg",
      verified: "github.com/winder/Universal-G-Code-Sender/"
  name "Universal G-code Sender (Platform version)"
  desc "G-code sender for CNC (compatible with GRBL, TinyG, g2core and Smoothieware)"
  homepage "https://winder.github.io/ugs_website/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "Universal Gcode Sender.app"

  zap trash: [
    "~/Library/Application Support/ugsplatform",
    "~/Library/Preferences/ugs",
  ]

  caveats <<~EOS
    UGS developers do not sign their code and this app may need manual changes.
    For more information, see:
      https://github.com/winder/Universal-G-Code-Sender/issues/1351#issuecomment-579110056
  EOS
end
