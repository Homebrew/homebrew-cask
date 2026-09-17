cask "typeface" do
  version "4.5.0,5255"
  sha256 "8a539cf69714c61d38b5f955fe464c724515f9313261eeaa9cfb1e7786a9adfc"

  url "https://dcdn.typefaceapp.com/Typeface-#{version.csv.first}-#{version.csv.second}/Typeface-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Typeface"
  desc "Font manager application"
  homepage "https://typefaceapp.com/"

  livecheck do
    url "https://dcdn.typefaceapp.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "Typeface.app"

  uninstall quit: "com.criminalbird.typeface.standalone"

  zap trash: [
    "~/Library/Application Scripts/com.criminalbird.typeface.standalone",
    "~/Library/Containers/com.criminalbird.typeface.standalone",
    "~/Library/Preferences/com.criminalbird.typeface.standalone.plist",
  ]
end
