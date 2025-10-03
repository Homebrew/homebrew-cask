cask "wirecast" do
  version "16.5.0"
  sha256 "aab982bbd5fee8dd61c37fab8332be99f00aade03dfdf62db0f6b00add3e3317"

  url "https://www.telestream.net/download-files/wirecast/#{version.major_minor.dots_to_hyphens}/Wirecast-#{version}.dmg"
  name "Wirecast"
  desc "Live video streaming production tool"
  homepage "https://www.telestream.net/wirecast/"

  livecheck do
    url "https://www.telestream.net/telestream-support/wire-cast/versions.htm"
    regex(/href=.*Wirecast[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  app "Wirecast.app"

  uninstall delete: [
    "/Library/LaunchDaemons/net.telestream.LicensingHelper.plist",
    "/Library/Preferences/net.telestream.wirecast.plist",
    "/Library/PriviledgedHelperTools/net.telestream.LicensingHelper",
  ]

  zap trash: [
    "~/Library/Caches/net.telestream.wirecast",
    "~/Library/HTTPStorages/net.telestream.wirecast",
    "~/Library/Logs/Wirecast",
    "~/Library/Preferences/net.telestream.wirecast.plist",
    "~/Library/Preferences/Wirecast",
    "~/Library/Saved Applicate State/net.telestream.wirecast.savedState",
  ]
end
