cask "xemu" do
  version "0.8.94"
  sha256 "3cf783e7d0455a482a0202e6c0311313e9be6207a82b371266238f5e2731405d"

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
