cask "zalo" do
  version "20.10.1"
  sha256 "3d37cca58ed71c14c28330c2c688955c6504ed42ba7293b4e083bf1537a8bfd4"

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
