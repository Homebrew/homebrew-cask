cask "typeface" do
  version "4.5.3,5317"
  sha256 "1d09c25a3c28a76020fd5df07e3f5f84172e99250c2a8a426588381a4ec42706"

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
    "~/Library/Application Scripts/group.com.criminalbird.typeface",
    "~/Library/Containers/com.criminalbird.typeface.standalone",
    "~/Library/Group Containers/group.com.criminalbird.typeface",
    "~/Library/Preferences/com.criminalbird.typeface.standalone.plist",
  ]
end
