cask "yammer" do
  version "3.4.9"
  sha256 "666ac5260f0439b440f2fd6b4bc02079830aae61d8c91dba577ebb11f35017c5"

  url "https://yammerdesktopapp.blob.core.windows.net/binaries/dist/darwin/x64/#{version}/Yammer-#{version}.dmg",
      verified: "yammerdesktopapp.blob.core.windows.net/binaries/dist/"
  name "Yammer"
  desc "Desktop client for Yammer"
  homepage "https://support.office.com/en-us/article/Yammer-for-Windows-and-Mac-50920c05-cbfc-4f11-8503-e20fb2e623a5"

  livecheck do
    url "https://aka.ms/yammer_desktop_mac"
    strategy :header_match
  end

  auto_updates true

  app "Yammer.app"

  zap trash: [
    "~/Library/Application Support/Yammer",
    "~/Library/Caches/com.microsoft.Yammer",
    "~/Library/Caches/com.microsoft.Yammer.ShipIt",
    "~/Library/Logs/Yammer",
    "~/Library/Preferences/com.microsoft.Yammer.plist",
    "~/Library/Saved Application State/com.microsoft.Yammer.savedState",
  ]
end
