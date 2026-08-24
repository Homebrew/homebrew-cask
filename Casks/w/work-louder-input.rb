cask "work-louder-input" do
  arch arm: "-arm64"

  version "0.18.3"
  sha256 arm:   "3b197d6014371d55bfc976fe2f3f8a593c6b02e2977f9b90b579cbfe1c3a529f",
         intel: "e864314bfb1a4cef15e0162567b32ea42f4b96b2684889f6c702ded413236049"

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
