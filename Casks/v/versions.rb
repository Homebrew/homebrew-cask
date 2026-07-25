cask "versions" do
  version "2.4.5,2042"
  sha256 "38cd533eff8669046f9d4a886c5ebabfdb93e8c51f9bb94e43fa5f3d31af9ae4"

  url "https://updates.versionsapp.com/v#{version.major}/prod/Versions-#{version.csv.first}-#{version.csv.second}.zip"
  name "Versions"
  desc "Subversion client"
  homepage "https://versionsapp.com/"

  livecheck do
    url "https://updates.versionsapp.com/v#{version.major}/prod/appcast"
    strategy :sparkle
  end

  depends_on :macos

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
