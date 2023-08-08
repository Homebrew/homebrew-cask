cask "tiptoi-manager" do
  version "5.1"
  sha256 :no_check

  url "https://www.ravensburger.de/db/Installer/tiptoi_Manager_Installer.pkg"
  name "tiptoi Manager"
  desc "Manage the data on children's Ravensburger tip toi audio pen"
  homepage "https://www.ravensburger.de/entdecken/ravensburger-marken/tiptoi/tiptoi-manager/index.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  pkg "tiptoi_Manager_Installer.pkg"

  uninstall quit:    "com.ravensburger.tiptoimanager",
            pkgutil: [
              "com.ravensburger.tiptoimanager",
              "com.ravensburger.tiptoi.TipToiBindings",
            ],
            delete:  "/Applications/tiptoi® Manager.app"

  zap trash: [
    "~/Library/Application Support/com.ravensburger.tiptoimanager",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.ravensburger.tiptoimanager",
    "~/Library/Preferences/com.ravensburger.tiptoimanager.plist",
    "~/Library/Saved Application State/com.ravensburger.tiptoimanager.savedState",
  ]
end
