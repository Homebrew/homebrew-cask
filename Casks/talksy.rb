cask "talksy" do
    version "0.0.23"
    sha256 "3760cf900f8a6d0515ccb82072d77746b887b97f9a44c8dd4ce5b11ff1a25991"
    url "https://repo.cyberkoalastudios.com/mtalksy/TalksyInstaller.zip"
    name "Talksy"
    desc "Video calling app"
    homepage "https://talksy.ru/landing/"
    livecheck do
        url "https://repo.cyberkoalastudios.com/mtalksy/TalksyInstaller.zip"
        strategy :page_match do |page|
          match = page.match(/ffone(\d)(\d+)\.zip/i)
          next if match.blank?
          "#{match[1]}.#{match[2]}"
        end
    end
    app "Talksy.app"
    zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.cyberkoalastudios.talksy.*",
        "~/Library/Application Support/Talksy",
        "~/Library/Caches/com.cyberkoalastudios.talksy",
        "~/Library/Caches/com.cyberkoalastudios.talksy.ShipIt",
        "~/Library/HTTPStorages/com.cyberkoalastudios.talksy",
        "~/Library/Preferences/com.cyberkoalastudios.talksy.plist",
        "~/Library/Saved Application State/com.cyberkoalastudios.talksy.savedState",
      ]
end