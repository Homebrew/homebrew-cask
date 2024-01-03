cask "ukelele" do
  version "3.5.8"
  sha256 "868f95b963de74878ee87006b490e061a86e47be0afd813a86978f106fa92f73"

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
