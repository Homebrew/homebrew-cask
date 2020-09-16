cask "ukelele" do
  version "3.4.2"
  sha256 "764ee84e645b789524cc7b2c5e4c4440b1e810fccca54c64e9dceb2e40264f6a"

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
