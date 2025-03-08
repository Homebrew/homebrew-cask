cask "xemu" do
  version "0.8.29"
  sha256 "84a6f63cb43dffe92555974bd9a7c13a6c09cb6cfe6fc873a0d4cc8cd72c49a8"

  url "https://github.com/xemu-project/xemu/releases/download/v#{version}/xemu-macos-universal-release.zip",
      verified: "github.com/xemu-project/xemu/"
  name "Xemu"
  desc "Original Xbox Emulator"
  homepage "https://xemu.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Xemu.app"

  zap trash: [
    "~/Library/Application Support/xemu",
    "~/Library/Preferences/xemu.app.0.plist",
    "~/Library/Saved Application State/xemu.app.0.savedState",
  ]
end
