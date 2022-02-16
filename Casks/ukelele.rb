cask "ukelele" do
  version "3.5.5,351"
  sha256 "7a4309b0694aa5e802efc877260e71171fe8762802386b362c0fdbb183b39c61"

  url "https://software.sil.org/downloads/r/ukelele/Ukelele_#{version.csv.first}.dmg"
  name "Ukelele"
  desc "Unicode keyboard layout editor"
  homepage "https://software.sil.org/ukelele/"

  livecheck do
    url "https://software.sil.org/downloads/r/ukelele/Ukelele_appcast.xml"
    strategy :sparkle
  end

  app "Ukelele.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sil.ukelele.sfl*",
    "~/Library/Caches/org.sil.Ukelele",
    "~/Library/Preferences/org.sil.ukelele.plist",
    "~/Library/Preferences/Ukelele",
  ]
end
