cask "xemu" do
  version "0.6.2-78-g2b27021eef"
  sha256 "8e13ac491e1fdd69d2a4beb3d5fcb12a8ebfe6a344282758cd0a4763c132b56d"

  url "https://github.com/mborgerson/xemu/releases/download/gh-release%2F#{version}/xemu-macos-universal-release.zip",
      verified: "https://github.com/mborgerson/xemu/releases/"
  name "Xemu"
  desc "Original Xbox Emulator"
  homepage "https://xemu.app/"

  livecheck do
    regex(%r{gh-release/v?(\d+(?:\.\d+)+-\d+-+g+[0-9a-f]{5,40}\b)$}i)
  end

  app "Xemu.app"

  zap trash: [
    "~/Library/Application Support/xemu",
    "~/Library/Preferences/xemu.app.0.plist",
    "~/Library/Saved Application State/xemu.app.0.savedState",
  ]
end
