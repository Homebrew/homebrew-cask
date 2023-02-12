cask "texifier" do
  version "1.9.19,741,c66201c"
  sha256 "bc31a14d05ee18e7ea32561afc03df79db783961ead52dd4d6173688bec160a5"

  url "https://download.texifier.com/apps/osx/updates/Texifier_#{version.csv.first.dots_to_underscores}__#{version.csv.second}__#{version.csv.third}.dmg"
  name "Texifier"
  desc "LaTeX editor"
  homepage "https://www.texifier.com/mac"

  livecheck do
    url "https://www.texifier.com/apps/updates/texifier/appcast-stable.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version},#{item.url[/_([^_]+)\.dmg/i, 1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Texifier.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vallettaventures.texpad.sfl2",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.vallettaventures.texpadm",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.vallettaventures.texpadm.plist",
    "~/Library/Application Support/Texpad",
    "~/Library/Caches/com.vallettaventures.Texpad",
    "~/Library/Cookies/com.vallettaventures.Texpad.binarycookies",
    "~/Library/HTTPStorages/com.vallettaventures.Texpad",
    "~/Library/HTTPStorages/com.vallettaventures.Texpad.binarycookies",
    "~/Library/Preferences/com.vallettaventures.Texpad.plist",
    "~/Library/Saved Application State/com.vallettaventures.Texpad.savedState",
    "~/Library/WebKit/com.vallettaventures.Texpad",
  ]
end
