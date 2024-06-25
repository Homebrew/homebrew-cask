cask "zoho-mail" do
  arch arm: "arm64-"

  version "1.6.2"
  sha256 arm:   "012bc0159073ce340a3f56c6a69beaf79bb29ce21ab32896717b48a794f83d28",
         intel: "cc529d14d4294c4c1ee87a356997e99e7ab7eeb621abc203b9f1813dea02f811"

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
