cask "xemu" do
  version "0.7.55"
  sha256 "70fdebc8b5641912fa90913d45d1db73ff07cd5dd47c3f69248ef1ffad43cca3"

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
