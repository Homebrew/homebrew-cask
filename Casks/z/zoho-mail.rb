cask "zoho-mail" do
  arch arm: "arm64-"

  version "1.6.1"
  sha256 arm:   "d334abaa3a99304dd37a345f33239b4da11a552c49483dc1f240ec3b13be9dc0",
         intel: "456af93f65fca37fff85b704ce184ef3494b9fbc5864bd624cc9e76ec4a7478f"

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
