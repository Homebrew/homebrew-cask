cask "workplace-chat" do
  version "202.0.0.1.225"
  sha256 :no_check

  url "https://www.facebook.com/work/chat/download/mac",
      referer: "https://www.facebook.com/workplace/chat-app"
  name "Facebook Workplace Chat"
  desc "Communications portal for your organisation"
  homepage "https://www.facebook.com/workplace/chat-app"

  disable! date: "2025-02-15", because: :discontinued

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
