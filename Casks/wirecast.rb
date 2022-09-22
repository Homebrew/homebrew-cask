cask "wirecast" do
  version "15.1.1"
  sha256 "018afcd6209712ebe0f729766fe3ed3c5c888402be2b3015635be8e61b74c45e"

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
