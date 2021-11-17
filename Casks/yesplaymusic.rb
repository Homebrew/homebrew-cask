cask "yesplaymusic" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.4.2"

  if Hardware::CPU.intel?
    sha256 "76731a76d0c32e3530d653082b8f2ae56339d6c239f8ffef44647d7f6259846a"
  else
    sha256 "7dea2ea672c1f79a60d6d4ca0862d02f39e2be5fd2ccc0f5cb52a97fdb515ccb"
  end

  url "https://github.com/qier222/YesPlayMusic/releases/download/v#{version}/YesPlayMusic-mac-#{version}#{arch}.dmg"
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
