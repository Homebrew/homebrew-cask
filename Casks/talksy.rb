cask "talksy" do
    version "0.0.23"
    sha256 "920962d69eb62a6d1edbe09e707604f8aba88266a909eced26f194ce39d59229"
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