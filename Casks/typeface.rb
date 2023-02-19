cask "typeface" do
  version "3.8.1,3603"
  sha256 "bd86549b21dcef0e76472bd50d3ae0b2d3307f80f9b99e118e20d161a64f8edb"

  url "https://dcdn.typefaceapp.com/Typeface-#{version.csv.first}-#{version.csv.second}/Typeface-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Typeface"
  desc "Font manager application"
  homepage "https://typefaceapp.com/"

  livecheck do
    url "https://dcdn.typefaceapp.com/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "Typeface.app"

  uninstall quit: "com.criminalbird.typeface.standalone"

  zap trash: [
    "~/Library/Application Scripts/com.criminalbird.typeface.standalone",
    "~/Library/Containers/com.criminalbird.typeface.standalone",
    "~/Library/Preferences/com.criminalbird.typeface.standalone.plist",
  ]
end
