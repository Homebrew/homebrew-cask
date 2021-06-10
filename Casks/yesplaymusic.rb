cask "yesplaymusic" do
  version "0.4.0"

  if Hardware::CPU.intel?
    sha256 "0e29e0d047f4d0e40756a19da8fbbce2d0f6a8db9ae14b8f615f2a96421b60e6"

    url "https://github.com/qier222/YesPlayMusic/releases/download/v#{version}/YesPlayMusic-mac-#{version}.dmg"
  else
    sha256 "5836a8acebb0cafd82238803b03eceee5aca8909a16ec0abcaaaca06e6fb732a"

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
