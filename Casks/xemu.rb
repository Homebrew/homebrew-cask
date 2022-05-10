cask "xemu" do
  version "0.7.3"
  sha256 "705d90d7eb35e02cb30dd245c4a9b9518b29977cb953469ad14d41094a0a9ee6"

  url "https://github.com/mborgerson/xemu/releases/download/v#{version}/xemu-macos-universal-release.zip",
      verified: "github.com/mborgerson/xemu/"
  name "Xemu"
  desc "Original Xbox Emulator"
  homepage "https://xemu.app/"

  app "Xemu.app"

  zap trash: [
    "~/Library/Application Support/xemu",
    "~/Library/Preferences/xemu.app.0.plist",
    "~/Library/Saved Application State/xemu.app.0.savedState",
  ]
end
