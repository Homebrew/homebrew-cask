cask "twake" do
  arch arm: "-arm64"

  version "5.1.1"
  sha256 arm:   "92172fa54de051ffd43bc48a8ee32d4a1041b72f1cd34d741d1f6cd7c910c0e9",
         intel: "01ce2f8c717dc58200c7194cfe2327823fedf8141a67e8422c7737eed3e36f67"

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
