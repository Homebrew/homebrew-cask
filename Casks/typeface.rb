cask "typeface" do
  version "3.7.0,3447"
  sha256 "6d8e2e7ef78360c645aa255f80d08a4e26ca9a3cba980969643cdd741553582f"

  url "https://dcdn.typefaceapp.com/Typeface-#{version.csv.first}-#{version.csv.second}/Typeface-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Typeface"
  desc "Font manager application"
  homepage "https://typefaceapp.com/"

  livecheck do
    url "https://dcdn.typefaceapp.com/appcast.xml"
    strategy :sparkle
  end

  app "Typeface.app"
end
