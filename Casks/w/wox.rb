cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.5.0"
  sha256 arm:   "414f940b389a390391a0309dea6033f313842adc1f2c2c153303c3fcf7a62486",
         intel: "9782775263dd9dc1456cc5227e021c00ed9234875d4fbcb7027c0bb007d412a6"

  url "https://github.com/Wox-launcher/Wox/releases/download/v#{version}/wox-mac-#{arch}.dmg"
  name "Wox"
  desc "Launcher tool"
  homepage "https://github.com/Wox-launcher/Wox"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :monterey

  app "Wox.app"

  zap trash: [
    "~/.wox",
    "~/Library/Preferences/com.github.wox.plist",
  ]
end
