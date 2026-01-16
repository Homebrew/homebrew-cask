cask "xemu" do
  version "0.8.132"
  sha256 "404225aa33a75fc6fb71cf83d020d50a44bda56d728e51a01e2175b2832bf4eb"

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
