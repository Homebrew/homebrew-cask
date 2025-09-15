cask "twake" do
  arch arm: "-arm64"

  version "4.0.0"
  sha256 arm:   "34054267cb5f11862169f3d01f5ec6480daf6df018c05182041ae9335543d0bb",
         intel: "b8344a3df05a8a8043cbd84aeb720bc4f36c4093886a21f24ee56ce82af84426"

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
