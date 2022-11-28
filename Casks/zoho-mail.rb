cask "zoho-mail" do
  arch arm: "arm64-"

  version "1.5.3"
  sha256 arm:   "e612ef18523dcff2fc35cc33559e166b3d15f685c3d9252810ee409e2ee2efa7",
         intel: "42fa824b1a1bdafc7115e621fea5a3b5f468b869fe39f43801cfff5e63a2f879"

  url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-installer-#{arch}v#{version}.dmg",
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
