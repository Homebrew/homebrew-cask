cask "universal-gcode-platform" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.12"
  sha256 arm:   "d7c3a279be5bc98575b75c54d25522b906a990f8915fb40ff2dff4a8d4cb2c6a",
         intel: "6260ab130718a9f2edf0e71ea0ea4b65df8c74edd42ec18658353fee87d82a01"

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
