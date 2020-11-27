cask "wowup" do
  version "2.0.0"
  sha256 "8a21083adb1db39fe2bf6ff8b5bfcda367d553f7e1f1a8a659341f5d1683bb47"

  # github.com/wowup/wowup was verified as official when first introduced to the cask
  url "https://github.com/wowup/wowup/releases/download/v#{version}/wowup-#{version}-mac.zip"
  appcast "https://github.com/wowup/wowup/releases.atom"
  name "WowUp"
  desc "World of Warcraft Addon manager"
  homepage "https://wowup.io/"

  auto_updates true

  app "WowUp.app"

  uninstall quit: [
    "WowUp",
  ]

  zap trash: [
    "~/Library/Application Support/WowUp",
    "~/Library/Logs/WowUp",
    "~/Library/Preferences/io.wowup.jliddev.plist",
    "~/Library/Saved\ Application\ State/io.wowup.jliddev.savedState/",
  ]
end
