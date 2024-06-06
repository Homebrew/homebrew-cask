cask "zotero@beta" do
  version "7.0.0-beta.84,71f83c0a3"
  sha256 "b345b910021a2096890b55e2e2e3d48b92439cf47df496d93a256df8c343b247"

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
