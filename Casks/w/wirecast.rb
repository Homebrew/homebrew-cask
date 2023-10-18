cask "wirecast" do
  version "16.0.1"
  sha256 "66c9c942bf2617d10ef79aecee582d85d678445df5099899b929639f02e62d7e"

  url "https://www.telestream.net/download-files/wirecast/#{version.major_minor.dots_to_hyphens}/Wirecast-#{version}.dmg"
  name "Wirecast"
  desc "Live video streaming production tool"
  homepage "https://www.telestream.net/wirecast/"

  livecheck do
    url "https://www.telestream.net/telestream-support/wire-cast/versions.htm"
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
