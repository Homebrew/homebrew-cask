cask "waterfox-classic" do
  version "2022.08"
  sha256 "9960899abd24d1802640d1be98d099a5ecf49c9cf18a59f1a98962234b7f92f8"

  url "https://github.com/WaterfoxCo/Waterfox-Classic/releases/download/#{version}-classic/Waterfox.Classic.#{version}.Setup.dmg",
      verified: "github.com/WaterfoxCo/Waterfox-Classic/"
  name "Waterfox Classic"
  desc "Web browser"
  homepage "https://classic.waterfox.net/"

  livecheck do
    url :url
    regex(%r{href=["']?[^"' >]*?/tag/v?(\d+(?:\.\d+)+)-classic["' >]}i)
    strategy :github_latest
  end

  app "Waterfox Classic.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
