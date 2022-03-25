cask "xemu" do
  version "0.6.2-88-g6e1969001e"
  sha256 "b117b0a45b093d27f4b79e21c86ea813ec6f1534d95a9ff6ab6377cab54bf515"

  url "https://github.com/mborgerson/xemu/releases/download/gh-release%2F#{version}/xemu-macos-universal-release.zip",
      verified: "github.com/mborgerson/xemu/"
  name "Xemu"
  desc "Original Xbox Emulator"
  homepage "https://xemu.app/"

  livecheck do
    url :url
    regex(%r{^gh-release/(.*)$}i)
  end

  app "Xemu.app"

  zap trash: [
    "~/Library/Application Support/xemu",
    "~/Library/Preferences/xemu.app.0.plist",
    "~/Library/Saved Application State/xemu.app.0.savedState",
  ]
end
