cask "typeface" do
  version "4.5.4,5320"
  sha256 "b9ff07e5216a1d3f4332039ed931c2aaf3d70b37088341af774b0707e1ac4d16"

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
