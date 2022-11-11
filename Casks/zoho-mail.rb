cask "zoho-mail" do
  arch arm: "arm64-"

  version "1.5.0"
  sha256 arm:   "4daf19419ce8a7d00b02be6c08aefb9733b06e3f50750b30303250b957bbf57e",
         intel: "9a4628e8d38b637dd80723f7f389a2ca0b2cc1dc2b454f6f35077c67bcb9851b"

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
