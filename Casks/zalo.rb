cask "zalo" do
  version "20.11.2"
  sha256 "9bcf98db09a01b30db03ac4730602ade91a9fe58e673ddd319c499d37f20e39c"

  # res-zaloapp-aka.zdn.vn/mac/ was verified as official when first introduced to the cask
  url "https://res-zaloapp-aka.zdn.vn/mac/ZaloSetup-#{version}.dmg#"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?user_agent=Macintosh&url=https://zalo.me/download/zalo-pc"
  name "Zalo"
  homepage "https://zalo.me/"

  app "Zalo.app"

  zap trash: [
    "~/Library/Application Support/Zalo",
    "~/Library/Application Support/ZaloPC",
    "~/Library/Preferences/com.vng.zalo.*.plist",
    "~/Library/Saved Application State/com.vng.zalo.savedState",
  ]
end
