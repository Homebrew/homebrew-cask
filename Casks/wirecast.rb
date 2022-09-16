cask "wirecast" do
  version "15.1"
  sha256 "ca0e5a517768828e3241db913f83d05f19ac1a1932e2ad4adc146cd645d55b60"

  url "https://www.telestream.net/download-files/wirecast/#{version.major_minor.dots_to_hyphens}/Wirecast-#{version}.dmg"
  name "Wirecast"
  desc "Live video streaming production tool"
  homepage "https://www.telestream.net/wirecast/"

  livecheck do
    url "https://www.telestream.net/wirecast/versions.htm"
    regex(/href=.*Wirecast[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Wirecast.app"

  uninstall delete: [
    "/Library/LaunchDaemons/net.telestream.LicensingHelper.plist",
    "/Library/Preferences/net.telestream.wirecast.plist",
    "/Library/PriviledgedHelperTools/net.telestream.LicensingHelper",
  ]

  zap trash: [
    "~/Library/Caches/net.telestream.wirecast/",
    "~/Library/HTTPStorages/net.telestream.wirecast",
    "~/Library/Logs/Wirecast",
    "~/Library/Preferences/Wirecast",
    "~/Library/Preferences/net.telestream.wirecast.plist",
    "~/Library/Saved Applicate State/net.telestream.wirecast.savedState",
  ]
end
