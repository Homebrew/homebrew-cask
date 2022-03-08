cask "typeface" do
  version "3.5.2,3166"
  sha256 "4691a6830473401e77af760e28cbb90c467049295e9c4dd6d5b26a4b7d43cc80"

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
