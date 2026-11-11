cask "zotero" do
  version "10.0.9"
  sha256 "fa42a04c33028ee020ccf47e64b3e135ce2fc57ba9a099e9f467f280ea56a387"

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  name "Zotero"
  desc "Collect, organise, cite, and share research sources"
  homepage "https://www.zotero.org/"

  livecheck do
    url "https://www.zotero.org/download/client/dl?channel=release&platform=mac"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "zotero@beta"
  depends_on :macos

  app "Zotero.app"

  uninstall quit: "org.zotero.zotero"

  zap trash: [
        "~/Library/Application Scripts/org.zotero.SafariExtensionApp.SafariExtension",
        "~/Library/Application Scripts/org.zotero.zotero.SafariExtension",
        "~/Library/Application Scripts/org.zotero.zotero.SafariWebExtension",
        "~/Library/Application Support/Zotero",
        "~/Library/Caches/Zotero",
        "~/Library/Containers/org.zotero.SafariExtensionApp.SafariExtension",
        "~/Library/Containers/org.zotero.zotero.SafariExtension",
        "~/Library/Containers/org.zotero.zotero.SafariWebExtension",
        "~/Library/Preferences/org.zotero.zotero.plist",
        "~/Library/Saved Application State/org.zotero.zotero.savedState",
      ],
      rmdir: "~/Zotero"
end
