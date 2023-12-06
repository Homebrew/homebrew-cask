cask "zoho-mail" do
  arch arm: "arm64-"

  version "1.6.0"
  sha256 arm:   "92d4e64f82eb80f8c07d96bcf0c20cbadb38002d7b1630529c6307ee4bae9da1",
         intel: "e0164d3c314c6e4c2ab5dc6eaee6edb2f4d39ac6b127c0aa4899ca4ede949b85"

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
