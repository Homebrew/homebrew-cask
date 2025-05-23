cask "ukelele" do
  version "3.6b4"
  sha256 "a7e794063b3cf2d7506769bbc7c79d5b409c8a75b4f9032071c798d4061f60ef"

  url "https://software.sil.org/downloads/r/ukelele/Ukelele_#{version}.dmg"
  name "Ukelele"
  desc "Unicode keyboard layout editor"
  homepage "https://software.sil.org/ukelele/"

  livecheck do
    url "https://software.sil.org/downloads/r/ukelele/Ukelele_appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Ukelele.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sil.ukelele.sfl*",
    "~/Library/Caches/org.sil.Ukelele",
    "~/Library/Preferences/org.sil.ukelele.plist",
    "~/Library/Preferences/Ukelele",
  ]
end
