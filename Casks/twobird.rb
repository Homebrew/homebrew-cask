cask "twobird" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.0.46"
  sha256 :no_check

  url "https://www.twobird.com/download/mac-#{arch}"
  name "Twobird"
  desc "Email client with collaborative notes"
  homepage "https://www.twobird.com/"

  livecheck do
    url "https://dl.twobird.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Twobird.app"

  zap trash: [
    "~/Library/Application Support/Twobird",
    "~/Library/Preferences/com.gingerlabs.bagel.plist",
    "~/Library/Saved Application State/com.gingerlabs.bagel.savedState",
  ]
end
