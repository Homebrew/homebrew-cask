cask "version-tracker" do
  version "1.2.3"
  sha256 "6ebc3eec4d7a122be724030b9cea8a6ca4e3243cd3088d01afc318f2220754b0"

  url "https://version-tracker.app/releases/Version-Tracker-#{version}.zip"
  name "Version Tracker"
  desc "Tracks and installs updates for apps, packages and system software"
  homepage "https://version-tracker.app/"

  livecheck do
    url "https://version-tracker.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Version Tracker.app"

  uninstall launchctl: [
              "com.jpflorencio.VersionTracker.agent",
              "com.jpflorencio.VersionTracker.Helper",
            ],
            quit:      [
              "com.jpflorencio.VersionTracker",
              "com.jpflorencio.VersionTracker.MenuBar",
            ]

  zap trash: [
    "~/Library/Application Support/Version Tracker",
    "~/Library/Application Support/VersionTracker",
    "~/Library/Caches/com.jpflorencio.VersionTracker",
    "~/Library/HTTPStorages/com.jpflorencio.VersionTracker",
    "~/Library/LaunchAgents/com.jpflorencio.VersionTracker.agent.plist",
    "~/Library/Preferences/com.jpflorencio.VersionTracker.plist",
    "~/Library/Preferences/group.com.jpflorencio.VersionTracker.plist",
  ]
end
