cask "xemu" do
  version "0.6.2-79-ga32f271d55"
  sha256 "174ffa45ff5eecf8a6c6991e4cddd8acffa6e5de0ba952c956d96a45bb0fe4cf"

  url "https://github.com/mborgerson/xemu/releases/download/gh-release%2F#{version}/xemu-macos-universal-release.zip",
      verified: "github.com/mborgerson/xemu/"
  name "Xemu"
  desc "Original Xbox Emulator"
  homepage "https://xemu.app/"

  livecheck do
    regex(%r{gh-release/(.*)}i)
  end

  app "Xemu.app"

  zap trash: [
    "~/Library/Application Support/xemu",
    "~/Library/Preferences/xemu.app.0.plist",
    "~/Library/Saved Application State/xemu.app.0.savedState",
  ]
end
