cask "xemu" do
  version "0.7.20"
  sha256 "bb6605cabd6b509f7ff5e849dd2996ab0d13ac9c68ad28ddd09792f5e2400e11"

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
