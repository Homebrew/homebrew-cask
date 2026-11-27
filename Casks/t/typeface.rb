cask "typeface" do
  version "4.6.0,5413"
  sha256 "5db3122d35dba0722ed9c44dee6acff2993cc3e72f38743ad54db8f38d910992"

  url "https://dcdn.typefaceapp.com/Typeface-#{version.csv.first}-#{version.csv.second}/Typeface-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Typeface"
  desc "Font manager application"
  homepage "https://typefaceapp.com/"

  livecheck do
    url "https://dcdn.typefaceapp.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

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
