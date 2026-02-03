cask "zoho-mail" do
  arch arm: "arm64-"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "2e56ece49deb63cabb198153d08a971b176932f2bd07272c7c5df0e11c1ffd36",
         intel: "0354b438dd5911991d2b1bde39b98aa78947b53784db73ead560425d9c91c0b2"

  url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-lite-installer-#{arch}v#{version}.dmg",
      verified: "downloads.zohocdn.com/zmail-desktop/mac/"
  name "Zoho Mail"
  desc "Email client"
  homepage "https://www.zoho.com/mail/desktop/"

  livecheck do
    url "https://downloads.zohocdn.com/zmail-desktop/artifacts.json"
    regex(/zoho[._-]mail[._-]desktop[._-]lite[._-]installer[._-]#{arch}v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :json do |json, regex|
      json["mac"]&.map do |_, item|
        match = item[livecheck_arch]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "Zoho Mail - Desktop.app"

  zap trash: [
    "~/Library/Application Support/Zoho Mail - Desktop",
    "~/Library/Logs/Zoho Mail - Desktop",
    "~/Library/Preferences/com.zoho.mail.desktop.plist",
    "~/Library/Saved Application State/com.zoho.mail.desktop.savedState",
  ]
end
