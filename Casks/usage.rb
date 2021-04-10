cask "usage" do
  version "1.4.4"
  sha256 "370d2e2c640a7763ef88c03a64f6305b2386cba36425c757d325b62b4547b3f8"

  url "https://mediaatelier.com/Usage/Usage_#{version}.zip"
  name "Usage"
  desc "Tracks application usage"
  homepage "https://www.mediaatelier.com/Usage/"

  livecheck do
    url "https://mediaatelier.com/Usage/feed.php"
    strategy :page_match
    regex(%r{href=.*?/Usage_(\d+(?:\.\d+)*)\.zip}i)
  end

  app "Usage.app"

  zap trash: [
    "~/Library/Application Support/com.mediaatelier.Usage",
    "~/Library/Caches/com.mediaatelier.Usage",
    "~/Library/Preferences/com.mediaatelier.Usage.plist",
  ]
end
