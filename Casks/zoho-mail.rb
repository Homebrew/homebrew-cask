cask "zoho-mail" do
  arch arm: "arm64-"

  version "1.5.2"
  sha256 arm:   "b090d774c7a452da6f91eb1f83731b1ecd0fdfe9e695530c864a851c34b6677b",
         intel: "8b62566d38e44ba2d5a20a5f793770f7a610623acab8d47d2d748e8f6a96a3bd"

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
