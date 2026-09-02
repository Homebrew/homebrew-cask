cask "whyfi" do
  version "1.4.4,24"
  sha256 "cc38a85663921864f18c0156f66c17cd5585450e011e86c6c5aa61e43679da2e"

  url "https://cdn.amore.computer/releases/com.whyfi.app/#{version.csv.first}-#{version.csv.second}/WhyFi.dmg"
  name "WhyFi"
  desc "Menu bar Wi-Fi monitor and diagnostics app"
  homepage "https://whyfi.network/"

  livecheck do
    url "https://updates.whyfi.network/v1/apps/com.whyfi.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

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
