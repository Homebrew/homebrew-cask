cask "xemu" do
  version "0.8.136"
  sha256 "9b5f52240b12ff0d6ab3852b38a820dc92b99124db8a981ccf2ed2cb893f446e"

  url "https://github.com/xemu-project/xemu/releases/download/v#{version}/xemu-#{version}-macos-universal.zip",
      verified: "github.com/xemu-project/xemu/"
  name "Xemu"
  desc "Original Xbox Emulator"
  homepage "https://xemu.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Xemu.app"

  zap trash: [
    "~/Library/Application Support/xemu",
    "~/Library/Preferences/xemu.app.0.plist",
    "~/Library/Saved Application State/xemu.app.0.savedState",
  ]
end
