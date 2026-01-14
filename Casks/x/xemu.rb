cask "xemu" do
  version "0.8.131"
  sha256 "7dee748f5163b2b220e1f6b7240c51d5b726ab1e43d308dcf7dfc214972eed96"

  url "https://github.com/xemu-project/xemu/releases/download/v#{version}/xemu-#{version}-macos-universal.zip",
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
