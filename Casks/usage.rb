cask "usage" do
  version "1.4.5.1"
  sha256 "7ac63ed6601298e9b6739cde87e18bea9a6a41d2718979cbfb9cccb3d578f502"

  url "https://mediaatelier.com/Usage/Usage_#{version}.zip"
  name "Usage"
  desc "Tracks application usage"
  homepage "https://www.mediaatelier.com/Usage/"

  livecheck do
    url "https://www.mediaatelier.com/Usage/feed.php"
    strategy :sparkle do |item|
      item.url[/Usage[._-]?(\d+(?:\.\d+)*)\.zip/i, 1]
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Usage.app"

  zap trash: [
    "~/Library/Application Support/com.mediaatelier.Usage",
    "~/Library/Caches/com.mediaatelier.Usage",
    "~/Library/Preferences/com.mediaatelier.Usage.plist",
  ]
end
