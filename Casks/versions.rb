cask "versions" do
  version "2.1.1,2022"
  sha256 "99576a9b6214067392175f1451fe0d7b27e560e6adfa2db2eb8a47edff19c32b"

  url "https://updates.versionsapp.com/v#{version.major}/prod/Versions-#{version.csv.first}-#{version.csv.second}.zip"
  name "Versions"
  desc "Subversion client"
  homepage "https://versionsapp.com/"

  livecheck do
    url "https://updates.versionsapp.com/v#{version.major}/prod/appcast"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "Versions.app"

  zap trash: [
    "~/Library/Application Support/com.versionsapp.v#{version.major}",
    "~/Library/Application Support/Versions",
    "~/Library/Caches/com.versionsapp.v#{version.major}",
    "~/Library/Preferences/com.versionsapp.v#{version.major}.plist",
  ]
end
