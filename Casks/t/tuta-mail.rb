cask "tuta-mail" do
  version "220.240321.0"
  sha256 "b38264909750aed31ba6ff81b98ad741d176bb99f8d7906dd9ffa098aa43fba3"

  url "https://github.com/tutao/tutanota/releases/download/tutanota-desktop-release-#{version}/tutanota-desktop-mac.dmg",
      verified: "github.com/tutao/tutanota/"
  name "Tuta Mail"
  desc "Email client"
  homepage "https://tuta.com/"

  livecheck do
    url "https://app.tuta.com/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Tuta Mail.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.tutao.tutanota.sfl*",
    "~/Library/Application Support/tutanota-desktop",
    "~/Library/Caches/de.tutao.tutanota",
    "~/Library/Caches/de.tutao.tutanota.ShipIt",
    "~/Library/Preferences/de.tutao.tutanota.plist",
  ]
end
