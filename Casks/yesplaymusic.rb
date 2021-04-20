cask "yesplaymusic" do
  version "0.3.6"
  sha256 "5ba647ce816325e6445d781ed9ababa0bdbc37ca86a4a540471cdf5605da6fce"

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
