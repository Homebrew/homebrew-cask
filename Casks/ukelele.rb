cask "ukelele" do
  version "3.5.1,340"
  sha256 "f512159bfbe7c13c4007e45b4149c7825916e4999ab6d632b2a8541580f92b85"

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
