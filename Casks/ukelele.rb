cask "ukelele" do
  version "3.5.0,339"
  sha256 "f7ed179571b0e5b0ca4f3b1ed3415d15ec7b97a543b05c5ca0e5dcee8950ac0f"

  url "https://software.sil.org/downloads/r/ukelele/Ukelele_#{version.before_comma}.dmg"
  name "Ukelele"
  homepage "https://software.sil.org/ukelele/"

  livecheck do
    url "https://software.sil.org/downloads/r/ukelele/Ukelele_appcast.xml"
    strategy :sparkle
  end

  app "Ukelele.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sil.ukelele.sfl*",
    "~/Library/Preferences/org.sil.ukelele.plist",
    "~/Library/Preferences/Ukelele",
    "~/Library/Caches/org.sil.Ukelele",
  ]
end
