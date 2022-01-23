cask "universal-gcode-platform" do
  version "2.0.10"
  sha256 "d57a7043d0f10cc76d6df95a5de32b5a379eae5b3fa54cd85ca8d532aa8d50cb"

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
