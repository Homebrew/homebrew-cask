cask "tutanota" do
  version "3.82.11.1361"
  sha256 :no_check

  url "https://mail.tutanota.com/desktop/tutanota-desktop-mac.zip"
  name "Tutanota Desktop"
  homepage "https://tutanota.com/"

  app "Tutanota Desktop.app"

  zap trash: [
    "~/Library/Application Support/tutanota-desktop",
    "~/Library/Caches/de.tutao.tutanota",
    "~/Library/Caches/de.tutao.tutanota.ShipIt",
    "~/Library/Preferences/de.tutao.tutanota.plist",
  ]
end
