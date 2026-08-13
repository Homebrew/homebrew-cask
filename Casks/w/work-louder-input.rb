cask "work-louder-input" do
  arch arm: "-arm64"

  version "0.18.2"
  sha256 arm:   "22973e1bc2459afb764d8468eaa19495d3e9abd77814246a842c1705e6f1bb1d",
         intel: "844f453bc684b796b9db100243332ffe9d2d07f89553592843ac71d8cf3d3dd0"

  url "https://github.com/worklouder/input-releases/releases/download/v#{version}/input-#{version}#{arch}.dmg",
      verified: "github.com/worklouder/input-releases/"
  name "Input"
  desc "Keyboard configurator for Work Louder devices"
  homepage "https://worklouder.cc/input"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "input.app"

  uninstall quit: "it.focusense.input-app"

  zap trash: [
    "~/Library/Application Support/input",
    "~/Library/Caches/input-updater",
    "~/Library/Caches/it.focusense.input-app",
    "~/Library/Logs/input",
    "~/Library/Preferences/it.focusense.input-app.plist",
  ]
end
