cask "whyfi" do
  version "1.3.2,17"
  sha256 "1f0c877dc9856dd8a6df7f3dc0f05250f0fc52e47fe0a48f567fa2e6e09e840a"

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
