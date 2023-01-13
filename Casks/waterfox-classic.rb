cask "waterfox-classic" do
  version "2022.11"
  sha256 "507151508846e9ea09e695322b9d70ca48dc23d120ab9ac75b899596c1863ff2"

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
