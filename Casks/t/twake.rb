cask "twake" do
  arch arm: "arm64", intel: "x64"

  version "5.5.0"
  sha256 arm:   "62550ad6e9f34ce8f831019932ccbce74a39c59a585b61f24c47ad159cfce206",
         intel: "298bd6f34fd64a248387b1bbeab337780166d2753be13b29b24f9b3d1ec128fb"

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
