cask "work-louder-input" do
  arch arm: "-arm64"

  version "1.1.0"
  sha256 arm:   "9041736606191ebd8111f1c34ecf0b39ce272e42636c70c8a19252093fa811f7",
         intel: "702f7d4637e8a0e29d7bd4e466843fd28c45dfdb145fbd071924d04bcce80adb"

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
