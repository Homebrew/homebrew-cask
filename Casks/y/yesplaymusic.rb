cask "yesplaymusic" do
  arch arm: "arm64", intel: "universal"

  version "0.4.8-2"
  sha256 arm:   "15a7ae98d9a43d0623f407b65f0fde294b9ecd1e1b11d9e2f258be35153d8b59",
         intel: "2f182bbbc6f654d59e0bd77a8b5801ff0502b1c2e43f38bd3b96fa5dc29818c7"

  url "https://github.com/qier222/YesPlayMusic/releases/download/v#{version}/YesPlayMusic-mac-#{version.hyphens_to_dots.major_minor_patch}-#{arch}.dmg"
  name "YesPlayMusic"
  desc "Third-party NetEase cloud player"
  homepage "https://github.com/qier222/YesPlayMusic"

  livecheck do
    url :url
    strategy :github_latest
    regex(/v?(\d+(?:[.-]\d+)+)/i)
  end

  app "YesPlayMusic.app"

  zap trash: [
    "~/Library/Application Support/YesPlayMusic",
    "~/Library/Preferences/com.electron.yesplaymusic.plist",
    "~/Library/Saved Application State/com.electron.yesplaymusic.savedState",
  ]
end
