cask "workplace-chat" do
  version "185.0.0.8.228"
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
