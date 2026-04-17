cask "whyfi" do
  version "1.4.1,21"
  sha256 "ff688019ba1014ba0005e44a9a5e09559678560698d37da35c56b09dc788908e"

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
