cask "whatsapp@beta" do
  version "26.25.12"
  sha256 "d9017fadf796fd9125989077e2e3b849c982ce582d7b40715a303fb162755e2d"

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
