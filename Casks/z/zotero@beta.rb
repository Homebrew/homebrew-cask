cask "zotero@beta" do
  version "7.0.8-beta.5,36f4cb48c"
  sha256 "1ada5e1986674d15d0730328d6a221440b712d889b563051e94a890438aaac3e"

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
