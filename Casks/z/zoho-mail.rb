cask "zoho-mail" do
  arch arm: "arm64-"

  version "1.6.3"
  sha256 arm:   "b79c5f61ecb149dbd539f9446e85a37bb1e549693365c76789490b2054ddc9fc",
         intel: "1986c21ec7816bd8f790b13086018aa9cc2a8ee3b58fa114b49338731bed95d2"

  url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-lite-installer-#{arch}v#{version}.dmg",
      verified: "downloads.zohocdn.com/zmail-desktop/mac/"
  name "Zoho Mail"
  desc "Email client"
  homepage "https://www.zoho.com/mail/desktop/"

  livecheck do
    url "https://downloads.zohocdn.com/zmail-desktop/artifacts.json"
    regex(/zoho[._-]mail[._-]desktop[._-]lite[._-]installer[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Zoho Mail - Desktop.app"

  zap trash: [
    "~/Library/Application Support/Zoho Mail - Desktop",
    "~/Library/Logs/Zoho Mail - Desktop",
    "~/Library/Preferences/com.zoho.mail.desktop.plist",
    "~/Library/Saved Application State/com.zoho.mail.desktop.savedState",
  ]
end
