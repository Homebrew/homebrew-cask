cask "tutanota" do
  version "3.119.10"
  sha256 :no_check

  url "https://mail.tutanota.com/desktop/tutanota-desktop-mac.dmg"
  name "Tutanota Desktop"
  desc "Email client"
  homepage "https://tutanota.com/"

  livecheck do
    url "https://mail.tutanota.com/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Tuta Mail Desktop.app"

  zap trash: [
    "~/Library/Application Support/tutanota-desktop",
    "~/Library/Caches/de.tutao.tutanota",
    "~/Library/Caches/de.tutao.tutanota.ShipIt",
    "~/Library/Preferences/de.tutao.tutanota.plist",
  ]
end
