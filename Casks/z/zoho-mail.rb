cask "zoho-mail" do
  arch arm: "arm64-"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "1.10.0"
  sha256 arm:   "98f0c3a899a5ebe9e0ffbaf2af6129874fbe8c2b0e7212e374ca9ff365afdb49",
         intel: "2f1615b425caa43a57e75da63c6ea1b5a94783d639e5a6371acb2115ae458077"

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

  depends_on macos: :monterey

  app "Zoho Mail - Desktop.app"

  zap trash: [
    "~/Library/Application Support/Zoho Mail - Desktop",
    "~/Library/Logs/Zoho Mail - Desktop",
    "~/Library/Preferences/com.zoho.mail.desktop.plist",
    "~/Library/Saved Application State/com.zoho.mail.desktop.savedState",
  ]
end
