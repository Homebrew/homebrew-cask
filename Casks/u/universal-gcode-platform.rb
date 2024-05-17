cask "universal-gcode-platform" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.7"
  sha256 arm:   "a1b0bbde6c8f155e337fb3b782f5ea395d355e6b06ef517542a13e845f9d4dd2",
         intel: "129dba87dc2933f2da0f487615b7d05aab9125c0d720e888cb6eb5d7d9a3a66e"

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
