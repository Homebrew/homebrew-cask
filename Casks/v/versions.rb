cask "versions" do
  version "3.0.1,3001"
  sha256 "caf5a2b47d9a60b1e1eaf2ee604de65858ea3f2ffe6c50daa988dba22b39a527"

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
    "~/Library/Application Support/com.versionsapp.v#{version.major}",
    "~/Library/Application Support/Versions",
    "~/Library/Caches/com.versionsapp.v#{version.major}",
    "~/Library/HTTPStorages/com.versionsapp.v#{version.major}",
    "~/Library/Preferences/com.versionsapp.v#{version.major}.plist",
    "~/Library/WebKit/com.versionsapp.v#{version.major}",
  ]
end
