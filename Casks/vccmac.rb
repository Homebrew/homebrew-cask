cask "vccmac" do
  version "1.0.2"
  sha256 "c056db7597d824e5bbf03d70625d811a676423bb7cb3f6ff1596c4828c4eaf57"

  url "https://github.com/AranoYuki1/VCC-for-mac/releases/download/#{version}/VCCMac.app.zip"
  name "VCC for mac"
  desc "Unofficial port of VRChat Creator Companion"
  homepage "https://github.com/AranoYuki1/VCC-for-mac"

  auto_updates true

  app "VCCMac.app"

  uninstall quit: [
    "com.yuki.VCCMac",
  ]

  zap trash: [
    "~/Library/Application Support/com.yuki.VCCMac",
    "~/Library/Logs/com.yuki.VCCMac",
    "~/Library/Preferences/com.yuki.VCCMac.plist",
  ]
end
