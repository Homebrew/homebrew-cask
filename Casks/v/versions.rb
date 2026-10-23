cask "versions" do
  version "3.0.2,3002"
  sha256 "8765d777714657e6d85c759aa9c6ced4f7bb2d3c5099bceb316e2612e72d4aaf"

  url "https://updates.versionsapp.com/v#{version.major}/prod/Versions-#{version.csv.first}-#{version.csv.second}.zip"
  name "Versions"
  desc "Subversion client"
  homepage "https://versionsapp.com/"

  livecheck do
    url "https://updates.versionsapp.com/v#{version.major}/prod/appcast"
    strategy :sparkle
  end

  depends_on macos: :sonoma

  app "Versions.app"

  zap trash: [
    "~/Library/Application Scripts/4G35KLFD64.com.versionsapp.shared",
    "~/Library/Application Scripts/com.versionsapp.v#{version.major}.finder",
    "~/Library/Application Support/com.versionsapp.v#{version.major}",
    "~/Library/Application Support/Versions",
    "~/Library/Caches/com.versionsapp.v#{version.major}",
    "~/Library/Containers/com.versionsapp.v#{version.major}.finder",
    "~/Library/Group Containers/4G35KLFD64.com.versionsapp.shared",
    "~/Library/HTTPStorages/com.versionsapp.v#{version.major}",
    "~/Library/Preferences/com.versionsapp.v#{version.major}.plist",
    "~/Library/WebKit/com.versionsapp.v#{version.major}",
  ]
end
