cask "xemu" do
  version "0.6.2-80-g5d02cdf512"
  sha256 "5bdb5692d8bdc697a396de87bba1038ba0855cdff5d2375bfb03fa21bbd9184d"

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
