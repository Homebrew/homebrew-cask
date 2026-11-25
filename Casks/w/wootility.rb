cask "wootility" do
  arch arm: "-arm64"

  version "5.4.2"
  sha256 arm:   "4d4e90b4169990900f7fb9d6aed16ead107aaeba72bed16a68a37d3c1f78912e",
         intel: "df7258eace27c26de5e27cca1f9cb69fd5feb3dd33c46d1dd92d9d8f3eae5075"

  url "https://wootility-updates.ams3.cdn.digitaloceanspaces.com/wootility-mac/Wootility-#{version}#{arch}.dmg"
  name "Wootility"
  desc "Configuration software for Wooting keyboards"
  homepage "https://wooting.io/wootility"

  livecheck do
    url "https://wootility-updates.ams3.digitaloceanspaces.com/wootility-mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "Wootility.app"

  zap trash: [
    "~/Library/Application Support/wootility",
    "~/Library/Logs/wootility",
    "~/Library/Preferences/com.wooting.wootility.plist",
    "~/Library/Saved Application State/com.wooting.wootility.savedState",
  ]
end
