cask "ukelele" do
  version "3.5.2,343"
  sha256 "1e847ab3cee8f0caa5e1a36ebabab82ba9e298f22429416bfef71689f34df642"

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
