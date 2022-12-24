cask "universal-gcode-platform" do
  version "2.0.12"
  sha256 "07dc8d2946b3c1f8de5d7cb58c8bd94ca379bb9fd8f306a898f76fd68d34806e"

  url "https://ugs.jfrog.io/ugs/UGS/v#{version}/ugs-platform-app-ios.dmg",
      verified: "https://ugs.jfrog.io/ugs/UGS/"
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
    According to https://github.com/winder/Universal-G-Code-Sender/issues/1351#issuecomment-579110056
    the UGS developers do not sign their code and this app might need manual changes.
  EOS
end
