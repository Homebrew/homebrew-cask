cask "zoho-mail" do
  version "1.3.1"
  sha256 "f8099f704317173c46083e946e7cb03143aa854b288832d9a0bbb5a31edf4aff"

  url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg",
      verified: "downloads.zohocdn.com/zmail-desktop/mac/"
  name "Zoho Mail"
  desc "Email client"
  homepage "https://www.zoho.com/mail/desktop/"

  livecheck do
    url "https://downloads.zohocdn.com/zmail-desktop/artifacts.json"
    regex(/zoho[._-]mail[._-]desktop[._-]installer[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Zoho Mail - Desktop.app"
end
