cask "viso" do
    version "8.9.1"
    sha256 :no_check

    url "https://getviso.app/files/Viso.dmg"
    name "Viso"
    desc "Beautiful minimal image viewer"
    homepage "https://getviso.app/"

    livecheck do
      url "https://getviso.app/files/visoappcast.xml"
      strategy :sparkle, &:version
    end

    auto_updates true

    app "Viso.app"

    zap trash: [
      "/Library/Preferences/com.apple.P2PSupervisor.plist",
      "~/Desktop/viso_appcast.xml",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ephod.viso.sfl2",
      "~/Library/Caches/com.ephod.Viso",
      "~/Library/HTTPStorages/com.ephod.Viso",
      "~/Library/HTTPStorages/com.ephod.Viso.binarycookies",
      "~/Library/Preferences/com.ephod.Viso.plist",
    ]
  end