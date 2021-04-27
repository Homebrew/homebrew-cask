cask "yesplaymusic" do
  version "0.3.7"
  sha256 "eed14f541e9f8c70a71b18d748584905d86f0476b84a4f7fc5ff9fb7172bfc5f"

  url "https://github.com/qier222/YesPlayMusic/releases/download/v#{version}/YesPlayMusic-mac-#{version}.dmg"
  name "YesPlayMusic"
  desc "Third-party NetEase cloud player"
  homepage "https://github.com/qier222/YesPlayMusic"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "YesPlayMusic.app"

  zap trash: [
    "~/Library/Application Support/YesPlayMusic",
    "~/Library/Preferences/com.electron.yesplaymusic.plist",
    "~/Library/Saved Application State/com.electron.yesplaymusic.savedState",
  ]
end
