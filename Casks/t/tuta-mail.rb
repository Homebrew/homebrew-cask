cask "tuta-mail" do
  version "259.241223.2"
  sha256 "439087daf31f83f13dc51e38edca0d5a1838b11c6afc6429cf3550e3389f2875"

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
