cask "usage" do
  version "1.4.6"
  sha256 "1a782b03b08b544eb1277c18576ce14e9388510f53f6e3bda4a6793bd2780c66"

  url "https://mediaatelier.com/Usage/Usage_#{version}.dmg"
  name "Usage"
  desc "Tracks application usage"
  homepage "https://www.mediaatelier.com/Usage/"

  livecheck do
    url "https://www.mediaatelier.com/Usage/feed.php"
    regex(/Usage[._-]?(\d+(?:\.\d+)*)\.dmg/i)
    strategy :sparkle do |item, regex|
      item.url[regex, 1]
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
