cask "whatsapp" do
  version "26.37.15"
  sha256 "68d92165face17a16e4ea7f33fcfbb1cf5989c2cb09ee8687501b35d2310b549"

  url "https://web.whatsapp.com/desktop/mac_native/release/?version=2.#{version}&extension=zip&configuration=Release&branch=master&is_buck=true"
  name "WhatsApp"
  desc "Native desktop client for WhatsApp"
  homepage "https://www.whatsapp.com/"

  livecheck do
    url "https://web.whatsapp.com/desktop/mac_native/updates/?branch=master&configuration=Release"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "whatsapp@beta"
  depends_on macos: :monterey

  app "WhatsApp.app"

  uninstall quit: "net.whatsapp.WhatsApp"

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
