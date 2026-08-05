cask "whatsapp" do
  version "26.31.19"
  sha256 "2e46195ba9bc8dc947e2cf98cb1d7e859973f1c3e16dd6b70a01e59485766bbc"

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
