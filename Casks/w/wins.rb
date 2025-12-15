cask "wins" do
  version "3.1,46"
  sha256 :no_check

  url "https://winswebsite.s3.us-east-005.backblazeb2.com/Wins.zip",
      verified: "winswebsite.s3.us-east-005.backblazeb2.com/"
  name "Wins"
  desc "Window manager"
  homepage "https://wins.cool/"

  livecheck do
    url "https://wins.cool/update/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Wins.app"

  zap trash: [
    "~/Library/Application Scripts/cool.wins.WinsHelper",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/cool.wins.*.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/cools.wins.*.sfl*",
    "~/Library/Application Support/cools.wins.main",
    "~/Library/Application Support/Wins",
    "~/Library/Caches/cools.wins.main",
    "~/Library/Containers/cool.wins.WinsHelper",
    "~/Library/Containers/WinsHelper",
    "~/Library/HTTPStorages/cools.wins.main*",
    "~/Library/PreferencePanes/Wins.prefPane",
    "~/Library/Preferences/cools.wins.main.plist",
    "~/Library/WebKit/cools.wins.main",
  ]
end
