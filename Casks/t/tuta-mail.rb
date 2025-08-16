cask "tuta-mail" do
  version "301.250806.1"
  sha256 "36b0b9ff7efa5b33f39bf4c426470b1bb523f8e32eaef146a5eca81715dc4c2c"

  url "https://github.com/tutao/tutanota/releases/download/tutanota-desktop-release-#{version}/tutanota-desktop-mac.dmg",
      verified: "github.com/tutao/tutanota/releases/download/"
  name "Tuta Mail"
  desc "Secure email client"
  homepage "https://tuta.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Tuta Mail.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.tutao.tutanota.sfl*",
    "~/Library/Application Support/tutanota-desktop",
    "~/Library/Caches/de.tutao.tutanota",
    "~/Library/Caches/de.tutao.tutanota.ShipIt",
    "~/Library/Caches/tutanota-desktop-updater",
    "~/Library/HTTPStorages/de.tutao.tutanota",
    "~/Library/Preferences/de.tutao.tutanota.plist",
  ]
end
