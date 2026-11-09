cask "wirecast" do
  version "16.5.5"
  sha256 "b1a26580347467ca399a096cf425f5899c6da44d4b71775f8f3de3a53622ec9c"

  url "https://www.telestream.net/download-files/wirecast/#{version.major_minor.dots_to_hyphens}/Wirecast-#{version}.dmg"
  name "Wirecast"
  desc "Live video streaming production tool"
  homepage "https://www.telestream.net/wirecast/"

  livecheck do
    url "https://www.telestream.net/telestream-support/wire-cast/versions.htm"
    regex(/href=.*?Wirecast[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: :sonoma

  app "Wirecast.app"

  uninstall quit:   "net.telestream.wirecast",
            delete: [
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
