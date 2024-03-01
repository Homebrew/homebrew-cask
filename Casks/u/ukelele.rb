cask "ukelele" do
  version "3.5.12"
  sha256 "27fa6376ca4439d61b8bfeba5d8edea2a51c752953f220c16995d56aa8a560ba"

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
