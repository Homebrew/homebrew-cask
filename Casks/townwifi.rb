cask "townwifi" do
  version "1.0.4,21"
  sha256 "4e0907ba00b6b83e90840deb6b259044a2068b4a4d1d360bdde02118f4b2ae26"

  url "https://storage.googleapis.com/townwifi-downloads/mac/update/TownWifi_UD_#{version.csv.second}.dmg",
      verified: "storage.googleapis.com/townwifi-downloads/"
  name "TownWiFi"
  homepage "https://townwifi.jp/"

  livecheck do
    url "https://storage.googleapis.com/townwifi-downloads/mac/update/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "TownWifi.app"
end
