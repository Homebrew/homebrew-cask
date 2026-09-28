cask "work-louder-input" do
  arch arm: "-arm64"

  version "1.0.0"
  sha256 arm:   "3ec26a29246be956d60b1a25916c3c896d2653d719a5782c14ba08ea18cd98c7",
         intel: "baf2f28d491e8228a89b9e5731f47e0447e9bceadc7e48afd9d037b56b2a1b5d"

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
