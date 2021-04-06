cask "usage" do
  version "1.4.4"
  sha256 "370d2e2c640a7763ef88c03a64f6305b2386cba36425c757d325b62b4547b3f8"

  url "https://mediaatelier.com/Usage/Usage_#{version}.zip"
  appcast "https://mediaatelier.com/Usage/feed.php"
  name "Usage"
  desc "Tracks application usage"
  homepage "https://www.mediaatelier.com/Usage/"

  app "Usage.app"

  zap trash: [
    "~/Library/Application Support/com.mediaatelier.Usage",
    "~/Library/Caches/com.mediaatelier.Usage",
    "~/Library/Preferences/com.mediaatelier.Usage.plist",
  ]
end
