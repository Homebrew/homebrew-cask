cask "zoho-mail" do
  arch arm: "arm64-"

  version "1.5.1"
  sha256 arm:   "fc76c823dc458101b0a30e29a5d175a4f1ce59cb50b3f0d06934c8765621f538",
         intel: "ae3b75c4beca8ea2e201052ada529b2be62bc8e9f1b84796411561f5f6628adf"

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
