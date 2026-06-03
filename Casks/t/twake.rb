cask "twake" do
  arch arm: "-arm64"

  version "5.3.0"
  sha256 arm:   "c30d21c9a6a61320a5aa64fd11f1915a7bbbb61e457c2e1dc1d5d029746e3b14",
         intel: "661ce84a8e75b816d97c620387ab05ca62920e5a37d6aa5d5291cfd0d8153a2e"

  url "https://github.com/cozy-labs/cozy-desktop/releases/download/v#{version}/Twake-Desktop-#{version}#{arch}.dmg",
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
