cask "twake" do
  arch arm: "arm64", intel: "x64"

  version "5.4.0"
  sha256 arm:   "4029c0b22b14ebf8b0444f2549d1cc956427e9319a5fbc75e73dda4191a0f0d8",
         intel: "9b99363160894de08aafb0c678e7737887d2c908758994b3f0a5d355fbd045b3"

  url "https://github.com/cozy-labs/cozy-desktop/releases/download/v#{version}/Twake-Desktop-#{arch}.dmg",
      verified: "github.com/cozy-labs/cozy-desktop/"
  name "Twake Desktop"
  desc "File synchronisation for Twake Workplace"
  homepage "https://twake.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Twake Desktop.app"

  zap trash: [
    "~/.cozy-desktop",
    "~/Library/Application Support/Cozy Drive",
    "~/Library/Preferences/io.cozy.desktop.plist",
    "~/Library/Saved Application State/io.cozy.desktop.savedState",
  ]
end
