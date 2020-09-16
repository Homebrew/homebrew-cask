cask "zoho-mail" do
  version "1.1.12"
  sha256 "0de9524c774cdc58a5ab03a84511bc3ffb34fc396f3d55ab435474b36eb4f412"

  # downloads.zohocdn.com/zmail-desktop/mac/ was verified as official when first introduced to the cask
  url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-installer-v#{version}.dmg"
  appcast "https://downloads.zohocdn.com/zmail-desktop/artifacts.json"
  name "Zoho Mail"
  homepage "https://www.zoho.com/mail/desktop/"

  app "Zoho Mail - Desktop.app"
end
