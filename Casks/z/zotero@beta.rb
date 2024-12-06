cask "zotero@beta" do
  version "7.0.11-beta.9,0a6095322"
  sha256 "f24f27e9efaee7a1ed5070b3b222d26b78fe0d25d4145e8e135084265d61c26d"

  url "https://download.zotero.org/client/beta/#{version.csv.first}%2B#{version.csv.second}/Zotero-#{version.csv.first}%2B#{version.csv.second}.dmg"
  name "Zotero Beta"
  desc "Collect, organize, cite, and share research sources"
  homepage "https://www.zotero.org/"

  livecheck do
    url "https://www.zotero.org/download/client/update/0/0/Darwin/en-US/beta/Darwin%25/update.xml"
    strategy :xml do |xml|
      xml.get_elements("//update[@type='major']").map do |element|
        element.attributes["displayVersion"]&.tr("+", ",")
      end
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
  ]
end
