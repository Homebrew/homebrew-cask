cask "whyfi" do
  version "1.2.1,13"
  sha256 "1a6fb16bf859a2944bdd8c6f1ee8ac4bdbd450a56501b05301c7a709f7a58f98"

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
