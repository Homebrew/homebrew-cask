cask "twake" do
  arch arm: "-arm64"

  version "5.1.0"
  sha256 arm:   "8cb01d7c94f059f9cbb265fd4f69fdc025e1c00125d2660a8be260f2a2d85c97",
         intel: "f31fe4894e2c413c2a857a242da8fed1e656362b20697a6c88b56e477e4546d2"

  url "https://github.com/cozy-labs/cozy-desktop/releases/download/v#{version}/Twake-Desktop-#{version}#{arch}.dmg",
      verified: "github.com/cozy-labs/cozy-desktop/"
  name "Twake Desktop"
  desc "File synchronisation for Twake Workplace"
  homepage "https://twake.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Twake Desktop.app"

  zap trash: [
    "~/.cozy-desktop",
    "~/Library/Application Support/Cozy Drive",
    "~/Library/Preferences/io.cozy.desktop.plist",
    "~/Library/Saved Application State/io.cozy.desktop.savedState",
  ]
end
