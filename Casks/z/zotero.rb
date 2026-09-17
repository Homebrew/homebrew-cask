cask "zotero" do
  version "10.0.3"
  sha256 "36b3f302aca026467b9f1973016a794c6fe95cadb0f7c0db4d414948da19f255"

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
        "~/Library/Application Support/Zotero",
        "~/Library/Caches/Zotero",
        "~/Library/Containers/org.zotero.SafariExtensionApp.SafariExtension",
        "~/Library/Preferences/org.zotero.zotero.plist",
        "~/Library/Saved Application State/org.zotero.zotero.savedState",
      ],
      rmdir: "~/Zotero"
end
