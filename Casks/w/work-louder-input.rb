cask "work-louder-input" do
  arch arm: "-arm64"

  version "1.0.1"
  sha256 arm:   "3fcffec2b1bd61bc36e0e42092a47ef63cef78d3b7083341b28f720e9ed7c3e2",
         intel: "491fde1fa486b93b412384c5ef528110bec9af9256471a6672edef123bb48915"

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
