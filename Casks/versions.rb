cask "versions" do
  version "2.2.1,2027"
  sha256 "a62d8dcd4fa6a869f474c1dab0d89071eb9ee95f68111ba7cc4397d260361915"

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
