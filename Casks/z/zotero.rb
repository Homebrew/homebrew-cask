cask "zotero" do
  version "7.0.17"
  sha256 "67b9ee2b4ca1971d99eb44f243bfc7812550cddc4e8f5d8720eb523b3b588f0c"

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
  depends_on macos: ">= :sierra"

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
