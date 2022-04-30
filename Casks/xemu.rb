cask "xemu" do
  version "v0.6.5"
  sha256 "16964c0e86a95b7c4320c75503198f4f576eb3160c1edb0c2ad07a76e9009ba1"

  url "https://github.com/mborgerson/xemu/releases/download/{version}/xemu-macos-universal-release.zip",
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
