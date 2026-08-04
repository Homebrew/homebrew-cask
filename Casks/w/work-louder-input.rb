cask "work-louder-input" do
  arch arm: "-arm64"

  version "0.18.0"
  sha256 arm:   "d56bf36a2dd733bc7f32a38ce178d0ea4bce0d8f0af47e48f5b7d5facfe27132",
         intel: "65533dc60bb5908f68b73d68ce704653b57b3c77d8b34a1173bdab0c4c804232"

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
