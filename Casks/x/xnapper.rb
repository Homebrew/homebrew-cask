cask "xnapper" do
  version "1.18.1,71"
  sha256 "7ac30bb98f6f380db04def7e3039ab32a7bb04845c2fee073de56c58e1578a19"

  url "https://xnapper.com/dmg/Xnapper-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Xnapper"
  desc "Screenshot tool"
  homepage "https://xnapper.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Xnapper[._-]v?(\d+(?:\.\d+)+)[._-](\d+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on :macos

  app "Xnapper.app"

  zap trash: [
    "~/Library/Application Scripts/com.devuap.beautyshotapp.Xnapper-Mac-Share-Extension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.devuap.beautyshotapp.sfl*",
    "~/Library/Application Support/Xnapper",
    "~/Library/Caches/Xnapper",
    "~/Library/Containers/com.devuap.beautyshotapp.Xnapper-Mac-Share-Extension",
    "~/Library/Preferences/com.devuap.beautyshotapp.plist",
  ]
end
