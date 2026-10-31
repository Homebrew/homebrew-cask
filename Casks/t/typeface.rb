cask "typeface" do
  version "4.5.2,5314"
  sha256 "f32621bb721c3dac5177fe651d3a0d34d174f4391aa8bf58bc7b3d8bcdb63ee5"

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
