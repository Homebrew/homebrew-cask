cask "whyfi" do
  version "1.3.4,19"
  sha256 "d0c3d5720da52b0cfde08f5638d4ac23392b3a0ca9ad5d9ecc4e0c17d13555bb"

  url "https://cdn.amore.computer/releases/com.whyfi.app/#{version.csv.first}%20(#{version.csv.second})/WhyFi.dmg",
      verified: "cdn.amore.computer/"
  name "WhyFi"
  desc "Menu bar Wi-Fi monitor and diagnostics app"
  homepage "https://whyfi.network/"

  livecheck do
    url "https://updates.whyfi.network/v1/apps/com.whyfi.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "WhyFi.app"

  zap trash: [
    "~/Library/Application Support/WhyFi",
    "~/Library/Caches/com.whyfi.app",
    "~/Library/HTTPStorages/com.whyfi.app",
    "~/Library/Logs/WhyFi",
    "~/Library/Preferences/com.whyfi.app.plist",
    "~/Library/WebKit/com.whyfi.app",
  ]
end
