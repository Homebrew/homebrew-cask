cask "tresorit" do
  version "3.5.1967.1350,1967"
  sha256 :no_check

  url "https://installerstorage.blob.core.windows.net/public/install/Tresorit.dmg",
      verified: "installerstorage.blob.core.windows.net/"
  name "Tresorit"
  homepage "https://tresorit.com/"

  app "Tresorit.app"

  uninstall login_item: "Tresorit"

  zap trash: [
    "~/Library/Application Support/Tresorit",
    "~/Library/Preferences/com.tresorit.mac.plist",
  ]
end
