cask "zotero@beta" do
  version "7.0.3-beta.1,2065a60b7"
  sha256 "9038478811410436e3a44fcff42cf14ff5af207b008d015f5458493a6952d698"

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
