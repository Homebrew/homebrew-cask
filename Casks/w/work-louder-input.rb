cask "work-louder-input" do
  arch arm: "-arm64"

  version "1.0.2"
  sha256 arm:   "f892ecd1d144747272e8a5b703bf85e1b22ba9306b4067eee6f6871fc1702f11",
         intel: "950dcb6a8866f40e6f64687d7282556fc059d9fe8170f10deb905e1263d5d2c0"

  url "https://github.com/worklouder/input-releases/releases/download/v#{version}/input-#{version}#{arch}.dmg"
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
