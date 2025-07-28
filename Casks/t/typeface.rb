cask "typeface" do
  version "4.1.0,4682"
  sha256 "3e00926c395be9ef93b7b1d6ec883eacd357e34fc19e350dc1e78aa565270ab8"

  url "https://dcdn.typefaceapp.com/Typeface-#{version.csv.first}-#{version.csv.second}/Typeface-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Typeface"
  desc "Font manager application"
  homepage "https://typefaceapp.com/"

  livecheck do
    url "https://dcdn.typefaceapp.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Typeface.app"

  uninstall quit: "com.criminalbird.typeface.standalone"

  zap trash: [
    "~/Library/Application Scripts/com.criminalbird.typeface.standalone",
    "~/Library/Containers/com.criminalbird.typeface.standalone",
    "~/Library/Preferences/com.criminalbird.typeface.standalone.plist",
  ]
end
