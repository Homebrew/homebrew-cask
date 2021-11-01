cask "universal-gcode-platform" do
  version "2.0.8"
  sha256 "10d1cd92c55d241f2d41235e0d29b903e1619a81838d2d438b1bd7a06b15433e"

  url "https://ugs.jfrog.io/ugs/UGS/v#{version}/ugs-platform-app-ios.dmg",
      verified: "https://ugs.jfrog.io/ugs/UGS/"
  name "Universal G-code Sender (Platform version)"
  desc "G-code sender for CNC (compatible with GRBL, TinyG, g2core and Smoothieware)"
  homepage "https://winder.github.io/ugs_website/"

  livecheck do
    url "https://github.com/winder/Universal-G-Code-Sender"
    strategy :git
  end

  app "Universal Gcode Platform.app"

  zap trash: [
    "~/Library/Application Support/ugsplatform",
    "~/Library/Preferences/ugs",
  ]

  caveats <<~EOS
    According to https://github.com/winder/Universal-G-Code-Sender/issues/1351#issuecomment-579110056
    the UGS developers do not sign their code and this app will not work with quarantine attributes.
    To use this cask, install it with:

      brew install --cask --no-quarantine #{token}

    WARNING: quarantining is a macOS security feature and you disable it at your own risk!
  EOS
end
