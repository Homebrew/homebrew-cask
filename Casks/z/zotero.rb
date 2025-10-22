cask "zotero" do
  version "7.0.28"
  sha256 "b1c5f9f68514186cf04102e19c0ab7b42e9fd6db56513948d137e65e803bf947"

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  name "Zotero"
  desc "Collect, organise, cite, and share research sources"
  homepage "https://www.zotero.org/"

  livecheck do
    url "https://www.zotero.org/download/client/update/0/0/Darwin/0/release/update.xml?force=1"
    strategy :xml do |xml|
      xml.get_elements("//update").map { |item| item.attributes["version"] }
    end
  end

  auto_updates true
  conflicts_with cask: "zotero@beta"

  app "Zotero.app"

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
