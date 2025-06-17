cask "xemu" do
  version "0.8.73"
  sha256 "553cda10285d4d2f866afe66891f5e7f4aae89381842781523de37d1da40e297"

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
