cask "usage" do
  version "1.4.5.2"
  sha256 "cd7d6516f7ec0b9d020afcdac6b7e430f92a5089de040cf31dbf06dbacae9d3c"

  url "https://mediaatelier.com/Usage/Usage_#{version}.dmg"
  name "Usage"
  desc "Tracks application usage"
  homepage "https://www.mediaatelier.com/Usage/"

  livecheck do
    url "https://www.mediaatelier.com/Usage/feed.php"
    strategy :sparkle do |item|
      item.url[/Usage[._-]?(\d+(?:\.\d+)*)\.dmg/i, 1]
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
