cask "xemu" do
  version "0.6.2-89-g2d5471c5be"
  sha256 "6bb43e7b02fd953f0a6e8098184a77e056661c3834d9f782f5ff000cab240976"

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
