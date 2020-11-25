cask "ukelele" do
  version "3.5b1"
  sha256 "22e4e434ca788e9811a979df7a201e4c4488361607f1632a4ad62b31307d8b41"

  url "https://software.sil.org/downloads/r/ukelele/Ukelele_#{version}.dmg"
  appcast "https://software.sil.org/downloads/r/ukelele/Ukelele_appcast.xml"
  name "Ukelele"
  homepage "https://software.sil.org/ukelele/"

  app "Ukelele.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sil.ukelele.sfl*",
    "~/Library/Preferences/org.sil.ukelele.plist",
    "~/Library/Preferences/Ukelele",
    "~/Library/Caches/org.sil.Ukelele",
  ]
end
