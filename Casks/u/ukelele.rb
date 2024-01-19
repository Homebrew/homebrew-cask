cask "ukelele" do
  version "3.5.9"
  sha256 "ed1b4903994c33ac63273a2e74bf15fc5daf14e0916d8f005a1e04f4afa37187"

  url "https://software.sil.org/downloads/r/ukelele/Ukelele_#{version}.dmg"
  name "Ukelele"
  desc "Unicode keyboard layout editor"
  homepage "https://software.sil.org/ukelele/"

  livecheck do
    url "https://software.sil.org/downloads/r/ukelele/Ukelele_appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Ukelele.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sil.ukelele.sfl*",
    "~/Library/Caches/org.sil.Ukelele",
    "~/Library/Preferences/org.sil.ukelele.plist",
    "~/Library/Preferences/Ukelele",
  ]
end
