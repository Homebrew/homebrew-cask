cask "viso" do
  version "8.9.4"
  sha256 :no_check

  url "https://getviso.app/files/Viso.dmg"
  name "Viso"
  desc "Image viewer"
  homepage "https://getviso.app/"

  livecheck do
    url "https://getviso.app/files/visoappcast.xml"
    strategy :sparkle, &:version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Viso.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ephod.viso.sfl*",
    "~/Library/Caches/com.ephod.Viso",
    "~/Library/HTTPStorages/com.ephod.Viso",
    "~/Library/HTTPStorages/com.ephod.Viso.binarycookies",
    "~/Library/Preferences/com.ephod.Viso.plist",
  ]
end
