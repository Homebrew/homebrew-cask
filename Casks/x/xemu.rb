cask "xemu" do
  version "0.8.139"
  sha256 "9817aaa5e187a698416271a6ddc083a40d7ff5e09c3231cff32a692638c7427d"

  url "https://github.com/xemu-project/xemu/releases/download/v#{version}/xemu-#{version}-macos-universal.zip"
  name "Xemu"
  desc "Original Xbox Emulator"
  homepage "https://xemu.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "xemu.app"

  zap trash: [
    "~/Library/Application Support/xemu",
    "~/Library/Preferences/xemu.app.0.plist",
    "~/Library/Saved Application State/xemu.app.0.savedState",
  ]
end
