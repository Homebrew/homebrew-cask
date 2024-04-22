cask "typeface" do
  version "3.12.2,4101"
  sha256 "e941a1e8247cb186a0c93f94fbdd0fcc463b9d0c69b66f71a42d631ff4c2c807"

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
