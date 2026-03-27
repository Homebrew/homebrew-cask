cask "zoho-mail" do
  arch arm: "arm64-"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "1.9.1"
  sha256 arm:   "1eede3318b9de1a2d89dda27d7604e2bce0a3b07af6619674347b859ea744619",
         intel: "e67351f28595d53cf6c5a9f7c5ea048fd5f753ded1c19bbffe1583a03ae28e29"

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

  depends_on macos: ">= :monterey"

  app "Zoho Mail - Desktop.app"

  zap trash: [
    "~/Library/Application Support/Zoho Mail - Desktop",
    "~/Library/Logs/Zoho Mail - Desktop",
    "~/Library/Preferences/com.zoho.mail.desktop.plist",
    "~/Library/Saved Application State/com.zoho.mail.desktop.savedState",
  ]
end
