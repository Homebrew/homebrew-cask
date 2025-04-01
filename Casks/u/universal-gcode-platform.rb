cask "universal-gcode-platform" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.13"
  sha256 arm:   "be30c7415b3510e9c96ebfae3e365c2c2c88d31fcf03c8bab240eb29354f7d7e",
         intel: "354b9d10a1d294d10890e9043a40173613beea12511b4552b61bb7d5117a88ac"

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
