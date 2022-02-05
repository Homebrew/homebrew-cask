cask "workplace-chat" do
  version "103.72.123"
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
end
