cask "whatsapp@beta" do
  version "26.33.19"
  sha256 "3d236925148132e8de39dc4c0adc27bb5b93a3b5a1d9c3d2cd1dcd2e9c2d4422"

  url "https://web.whatsapp.com/desktop/mac_native/release/?version=2.#{version}&extension=zip&configuration=Beta&branch=master"
  name "WhatsApp Beta"
  desc "Native desktop client for WhatsApp"
  homepage "https://www.whatsapp.com/"

  livecheck do
    url "https://web.whatsapp.com/desktop/mac_native/updates/?configuration=Beta&branch=master"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "whatsapp"
  depends_on macos: :monterey

  app "WhatsApp.app"

  uninstall launchctl: [
              "net.whatsapp.WhatsApp-sparkle-progress",
              "net.whatsapp.WhatsApp-sparkle-updater",
            ],
            quit:      [
              "net.whatsapp.WhatsApp",
              "net.whatsapp.WhatsApp-sparkle-progress",
              "net.whatsapp.WhatsApp-sparkle-updater",
            ]

  zap trash: [
    "~/Library/Application Scripts/group.net.whatsapp.family",
    "~/Library/Application Scripts/group.net.whatsapp.WhatsApp.private",
    "~/Library/Application Scripts/group.net.whatsapp.WhatsApp.shared",
    "~/Library/Application Scripts/group.net.whatsapp.WhatsAppSMB.shared",
    "~/Library/Application Scripts/net.whatsapp.WhatsApp*",
    "~/Library/Caches/net.whatsapp.WhatsApp",
    "~/Library/Containers/net.whatsapp.WhatsApp*",
    "~/Library/Group Containers/group.com.facebook.family",
    "~/Library/Group Containers/group.net.whatsapp*",
    "~/Library/Saved Application State/net.whatsapp.WhatsApp.savedState",
  ]
end
