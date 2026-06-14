cask "zmk-studio" do
  version "0.3.1"
  sha256 "cf397f982f5649255005ca77725c1236a11680e4b3566d6ff11e46139a33489e"

  url "https://github.com/zmkfirmware/zmk-studio/releases/download/v#{version}/ZMK.Studio_#{version}_universal.dmg",
      verified: "github.com/zmkfirmware/zmk-studio/"
  name "ZMK Studio"
  desc "Visual editor for ZMK Firmware keymaps"
  homepage "https://zmk.studio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "ZMK Studio.app"

  zap trash: [
    "~/Library/Caches/dev.zmk.studio",
    "~/Library/WebKit/dev.zmk.studio",
  ]
end
