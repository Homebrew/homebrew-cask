cask "zoho-mail" do
  version "1.2.0"
  sha256 "682fc7c2f7e4750717066e0681d9b5168fe11a61c279a4534aaa49b7fe073d60"

  url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg",
      verified: "downloads.zohocdn.com/zmail-desktop/mac/"
  appcast "https://downloads.zohocdn.com/zmail-desktop/artifacts.json"
  name "Zoho Mail"
  homepage "https://www.zoho.com/mail/desktop/"

  app "Zoho Mail - Desktop.app"
end
