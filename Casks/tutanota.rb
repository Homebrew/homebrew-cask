cask "tutanota" do
  version "3.83.2"
  sha256 :no_check

  url "https://mail.tutanota.com/desktop/tutanota-desktop-mac.zip"
  name "Tutanota Desktop"
  desc "Email client"
  homepage "https://tutanota.com/"

  livecheck do
    url "https://github.com/tutao/tutanota"
    strategy :github_latest
    regex(%r{href=.*?/tutanota-release-(\d+(?:\.\d+)*)}i)
  end

  app "Tutanota Desktop.app"

  zap trash: [
    "~/Library/Application Support/tutanota-desktop",
    "~/Library/Caches/de.tutao.tutanota",
    "~/Library/Caches/de.tutao.tutanota.ShipIt",
    "~/Library/Preferences/de.tutao.tutanota.plist",
  ]
end
