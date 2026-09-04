cask "zotero@beta" do
  version "10.0.2-beta.7,a5b4b4d20"
  sha256 "f0d87533c7fc0fa93eb2612f138a4b0a4f687827e395b87946c764e1d8cc22bd"

  url "https://download.zotero.org/client/beta/#{version.csv.first}%2B#{version.csv.second}/Zotero-#{version.csv.first}%2B#{version.csv.second}.dmg"
  name "Zotero Beta"
  desc "Collect, organize, cite, and share research sources"
  homepage "https://www.zotero.org/"

  livecheck do
    url "https://www.zotero.org/download/client/dl?platform=mac&channel=beta"
    regex(/Zotero[._-]v?(\d+(?:\.\d+)+-beta\.\d+)%2B([0-9a-f]+)\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  conflicts_with cask: "zotero"
  depends_on :macos

  app "Zotero.app"

  uninstall quit: "org.zotero.zotero-beta"

  zap trash: [
        "~/Library/Application Scripts/org.zotero.SafariExtensionApp.SafariExtension",
        "~/Library/Application Scripts/org.zotero.zotero-beta.SafariExtension",
        "~/Library/Application Support/Zotero",
        "~/Library/Caches/Zotero",
        "~/Library/Containers/org.zotero.SafariExtensionApp.SafariExtension",
        "~/Library/Containers/org.zotero.zotero-beta.SafariExtension",
        "~/Library/Preferences/org.zotero.zotero-beta.plist",
        "~/Library/Saved Application State/org.zotero.zotero-beta.savedState",
      ],
      rmdir: "~/Zotero"
end
