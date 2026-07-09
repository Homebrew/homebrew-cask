cask "whatsapp" do
  version "26.27.19"
  sha256 "9da74337930322132d1e240818ccc510ff52030920644d8004500bf3399beec5"

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
    "~/Library/Application Scripts/net.whatsapp.WhatsApp*",
    "~/Library/Caches/net.whatsapp.WhatsApp",
    "~/Library/Containers/net.whatsapp.WhatsApp*",
    "~/Library/Group Containers/group.com.facebook.family",
    "~/Library/Group Containers/group.net.whatsapp*",
    "~/Library/Saved Application State/net.whatsapp.WhatsApp.savedState",
  ]
end
