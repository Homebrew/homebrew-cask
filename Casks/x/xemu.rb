cask "xemu" do
  version "0.8.133"
  sha256 "f1151b143a24a44589993bc237feacbb0fd11c9b509ef2f1833a8a31fd8a89ab"

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
