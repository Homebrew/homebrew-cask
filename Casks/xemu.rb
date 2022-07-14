cask "xemu" do
  version "0.7.60"
  sha256 "699bab53faccc9a3853648ec2259dc68effe3cacd74b5607b1778204548b731a"

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
