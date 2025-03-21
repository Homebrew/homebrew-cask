cask "zotero@beta" do
  version "7.1-beta.23,6787dcd59"
  sha256 "ade3b96a85bf7d63106bc490ed23c8e4ef50bc1929c90d7efe525633037b7b6e"

  url "https://download.zotero.org/client/beta/#{version.csv.first}%2B#{version.csv.second}/Zotero-#{version.csv.first}%2B#{version.csv.second}.dmg"
  name "Zotero Beta"
  desc "Collect, organize, cite, and share research sources"
  homepage "https://www.zotero.org/"

  livecheck do
    url "https://www.zotero.org/download/client/update/0/0/Darwin/0/beta/update.xml?force=1"
    strategy :xml do |xml|
      xml.get_elements("//update").map { |item| item.attributes["version"]&.tr("+", ",") }
    end
  end

  auto_updates true
  conflicts_with cask: "zotero"
  depends_on macos: ">= :sierra"

  app "Zotero.app"

  zap trash: [
        "~/Library/Application Scripts/org.zotero.SafariExtensionApp.SafariExtension",
        "~/Library/Application Support/Zotero",
        "~/Library/Caches/Zotero",
        "~/Library/Containers/org.zotero.SafariExtensionApp.SafariExtension",
        "~/Library/Preferences/org.zotero.zotero-beta.plist",
        "~/Library/Saved Application State/org.zotero.zotero-beta.savedState",
      ],
      rmdir: "~/Zotero"
end
