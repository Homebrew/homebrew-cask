cask "universal-gcode-platform" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.14"
  sha256 arm:   "ab739ec61b3a5799e7ab07a0ce3b970bb0a1c3dab2ea3ee067f1ef27984e81d2",
         intel: "d92cf24c481a80ed89fe14129c084ea4235cb3d4e1ff00d7849ed765aa26ab08"

  url "https://github.com/winder/Universal-G-Code-Sender/releases/download/v#{version}/macosx-#{arch}-ugs-platform-app-#{version}.dmg",
      verified: "github.com/winder/Universal-G-Code-Sender/"
  name "Universal G-code Sender (Platform version)"
  desc "G-code sender for CNC (compatible with GRBL, TinyG, g2core and Smoothieware)"
  homepage "https://winder.github.io/ugs_website/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
