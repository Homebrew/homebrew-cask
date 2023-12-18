cask "winzip" do
  version "11.0.6675"
  sha256 "d243eac05a338f9a9e680a16d272a4382dfd3f331b36ed3c97d48520670bea47"

  url "https://download.winzip.com/winzipmacedition#{version.major}.dmg"
  name "WinZip"
  desc "File archiving tool"
  homepage "https://www.winzip.com/mac/en/winzip.html"

  livecheck do
    url "https://www.winzip.com/en/download/"
    regex(/href=.*?winzipmacedition[._-]?v?(\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      major_version = page[regex, 1]
      next if major_version.blank?

      cask = CaskLoader.load(__FILE__)
      download_url = "https://download.winzip.com/winzipmacedition#{major_version}.dmg"
      Homebrew::Livecheck::Strategy::ExtractPlist.find_versions(cask: cask, url: download_url)[:matches].values
    end
  end

  depends_on macos: ">= :sierra"

  app "WinZip.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.winzip.winzip-mac.sfl*",
    "~/Library/Caches/com.apple.helpd/Generated/WinZip Help*",
    "~/Library/Caches/com.winzip.WinZip-Mac",
    "~/Library/Logs/WinZip-Mac.log",
    "~/Library/Preferences/com.winzip.WinZip-Mac.plist",
    "~/Library/Saved Application State/com.winzip.WinZip-Mac.savedState",
    "~/Library/Services/Winzip*.workflow",
    "~/Library/WebKit/com.winzip.WinZip-Mac",
  ]
end
