cask "universal-gcode-platform" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "d2c3402ac5ae8b714544523ec276cdd9c24e52cca36a2af68eae971d079b1426",
         intel: "d22de8705803fa4800be3cf8ade7b3416b0f5c69b9fd11b43312a600c81ff536"

  url "https://github.com/winder/Universal-G-Code-Sender/releases/download/v#{version}/macosx-#{arch}-ugs-platform-app-#{version}.dmg",
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
