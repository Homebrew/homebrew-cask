cask "ukelele" do
  version "3.5.7"
  sha256 "631994a31763c7dc383d429969a7b3d98975ad98dcf30dc51b1421fc93fc05e7"

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
