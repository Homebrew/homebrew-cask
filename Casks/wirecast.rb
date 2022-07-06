cask "wirecast" do
  version "15.0.3"
  sha256 "1056602c4a4218a0b0b678323de48cf6e59a44c9c873d9cb31581495ea10a38a"

  url "https://www.telestream.net/download-files/wirecast/#{version.major_minor.dots_to_hyphens}/Wirecast-#{version}.dmg"
  name "Wirecast"
  desc "Live video streaming production tool"
  homepage "https://www.telestream.net/wirecast/"

  livecheck do
    url "https://www.telestream.net/wirecast/versions.htm"
    regex(/Wirecast[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
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
