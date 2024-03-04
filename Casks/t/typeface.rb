cask "typeface" do
  version "3.12.0,4076"
  sha256 "2dbbd0d6cef5a3d58c85b2bb404d22a4e5583479dc411dd0fcad0db09bacf7ca"

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
