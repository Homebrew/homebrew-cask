cask "yesplaymusic" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.4.3"

  if Hardware::CPU.intel?
    sha256 "5b85d28d891185edf4f2d672560c2738ced8fadf90682960c9dc88b06e8bf457"
  else
    sha256 "7f81e80630848309303d582efb18e5b169628c4a3a94c4f9805e29336391a817"
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
