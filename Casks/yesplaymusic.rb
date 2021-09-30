cask "yesplaymusic" do
  version "0.4.1"

  if Hardware::CPU.intel?
    sha256 "f309fde4a5c3c34717df3fcc310c0b0e640bcc34b8f7b04f164f52b562f87cad"

    url "https://github.com/qier222/YesPlayMusic/releases/download/v#{version}/YesPlayMusic-mac-#{version}.dmg"
  else
    sha256 "6b488f2cdbfb7d11e902de2878904c19e2ab09effe9234a4d27a0c30e5dd5fa1"

    url "https://github.com/qier222/YesPlayMusic/releases/download/v#{version}/YesPlayMusic-mac-#{version}-arm64.dmg"
  end

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
