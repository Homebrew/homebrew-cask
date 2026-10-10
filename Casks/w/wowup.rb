cask "wowup" do
  arch arm: "-arm64"

  version "2.24.0"
  sha256 arm:   "6980cb993921516e4e123dedd351e2d025881165ce593a0eddf8d9afe47f6a56",
         intel: "07cd01e7350d1daebf6cae9376cb4166c1a7421f9a312c6ab0f22a07758c5df1"

  url "https://github.com/WowUp/WowUp/releases/download/v#{version}/WowUp-#{version}#{arch}.dmg"
  name "WowUp"
  desc "World of Warcraft addon manager"
  homepage "https://wowup.io/"

  auto_updates true
  depends_on macos: :monterey

  app "WowUp.app"

  uninstall quit: "io.wowup.jliddev"

  zap trash: [
    "~/Library/Application Support/WowUp",
    "~/Library/Logs/WowUp",
    "~/Library/Preferences/io.wowup.jliddev.plist",
    "~/Library/Saved Application State/io.wowup.jliddev.savedState",
  ]
end
