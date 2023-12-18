cask "workplace-chat" do
  version "200.0.0.24.217"
  sha256 :no_check

  url "https://www.facebook.com/work/chat/download/mac",
      referer: "https://www.facebook.com/workplace/chat-app"
  name "Facebook Workplace Chat"
  desc "Communications portal for your organisation"
  homepage "https://www.facebook.com/workplace/chat-app"

  livecheck do
    url :url
    strategy :header_match
  end

  app "Workplace Chat.app"

  zap trash: [
    "~/Library/Application Support/Workplace",
    "~/Library/Application Support/workplace-desktop",
    "~/Library/Caches/Workplace",
    "~/Library/Caches/workplace-desktop",
    "~/Library/HTTPStorages/workplace-desktop",
    "~/Library/Preferences/workplace-desktop.plist",
    "~/Library/Saved Application State/workplace-desktop.savedState",
  ]
end
