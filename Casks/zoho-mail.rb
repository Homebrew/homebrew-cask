cask "zoho-mail" do
  arch arm: "arm64-"

  version "1.5.4"
  sha256 arm:   "1306a455fb5711cf49f65c7623c3c7a0e58d5d429a1ea2d31b1f759fe3e60c96",
         intel: "a599c992e72b3ac61d2c13327a1a7d64020e803a55c4f79c29a6ebec121e755e"

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
