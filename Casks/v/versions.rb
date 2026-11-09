cask "versions" do
  version "3.0.3,3007"
  sha256 "e59e500cf82b63276ed7e72ed4a55ff0afd26cfd5cfbd30af787a3b23314f8c0"

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
