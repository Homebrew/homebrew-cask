cask "universal-gcode-platform" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.23"
  sha256 arm:   "da1f93e5a68da50ba1713ad780712ba316fe37feea15938d4e2d66d833f78e3d",
         intel: "9303f0adbe723bb30b2177ad9ca564527763da2a2e78db30c0f2c4fdac839415"

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

  depends_on macos: :big_sur

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
