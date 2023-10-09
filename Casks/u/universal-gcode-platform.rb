cask "universal-gcode-platform" do
  version "2.0.21"
  sha256 "1f9e876d29b941ad285a5c0c9eb83fae5a3c34b2ffb500a9331905591d25cc18"

  url "https://github.com/winder/Universal-G-Code-Sender/releases/download/v#{version}/ios-ugs-platform-app-#{version}.dmg",
      verified: "github.com/winder/Universal-G-Code-Sender/"
  name "Universal G-code Sender (Platform version)"
  desc "G-code sender for CNC (compatible with GRBL, TinyG, g2core and Smoothieware)"
  homepage "https://winder.github.io/ugs_website/"

  livecheck do
    url "https://github.com/winder/Universal-G-Code-Sender"
    strategy :github_latest
  end

  app "Universal Gcode Platform.app"

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
