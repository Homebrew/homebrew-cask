cask "whatsapp@beta" do
  version "2.24.19.75"
  sha256 "44ef9aed5d3835df80053c61583e70094561f7dbd4224f8a4b7d8b7e3f5bb945"

  url "https://web.whatsapp.com/desktop/mac_native/release/?version=#{version}&extension=zip&configuration=Beta&branch=relbranch"
  name "WhatsApp Beta"
  desc "Native desktop client for WhatsApp"
  homepage "https://www.whatsapp.com/"

  livecheck do
    url "https://web.whatsapp.com/desktop/mac_native/updates/?branch=relbranch&configuration=Beta"
    regex(/version=v?(\d+(?:\.\d+)+)/i)
    strategy :sparkle do |item, regex|
      item.url.scan(regex).map(&:first)
    end
  end

  auto_updates true
  conflicts_with cask: [
    "whatsapp",
    "whatsapp@legacy",
  ]
  depends_on macos: ">= :big_sur"

  app "WhatsApp.app"

  zap trash: [
    "~/Library/Application Scripts/net.whatsapp.WhatsApp",
    "~/Library/Application Scripts/net.whatsapp.WhatsApp.Intents",
    "~/Library/Application Scripts/net.whatsapp.WhatsApp.IntentsUI",
    "~/Library/Application Scripts/net.whatsapp.WhatsApp.ServiceExtension",
    "~/Library/Caches/net.whatsapp.WhatsApp",
    "~/Library/Containers/net.whatsapp.WhatsApp",
    "~/Library/Containers/net.whatsapp.WhatsApp.Intents",
    "~/Library/Containers/net.whatsapp.WhatsApp.ServiceExtension",
    "~/Library/Group Containers/group.com.facebook.family",
    "~/Library/Group Containers/group.net.whatsapp.family",
    "~/Library/Group Containers/group.net.whatsapp.WhatsApp.private",
    "~/Library/Group Containers/group.net.whatsapp.WhatsApp.shared",
    "~/Library/Group Containers/group.net.whatsapp.WhatsAppSMB.shared",
    "~/Library/Saved Application State/net.whatsapp.WhatsApp.savedState",
  ]
end
