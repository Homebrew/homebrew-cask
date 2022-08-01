cask "xemu" do
  version "0.7.66"
  sha256 "1cd3eb01113bca01dd7298d5b1b7f2b5b4bba089f97b4483ff474e26769fe9e8"

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
