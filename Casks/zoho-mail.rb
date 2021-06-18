cask "zoho-mail" do
  version "1.3.0"
  sha256 "8008bc94e2bf5c26c3f7d7c62308509275a7c64f3fc9b264786c8dcc0dbabab0"

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
