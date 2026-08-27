cask "work-louder-input" do
  arch arm: "-arm64"

  version "0.18.4"
  sha256 arm:   "8192f5170cac808e4ecd000c8494a5b9fd44c4a91a5bd773a802a086ddf43690",
         intel: "25d741f24b09fc8715384bfe1934ec1c46c89c23818770f468bc2c0e9f761962"

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
