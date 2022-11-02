cask "typeface" do
  version "3.7.1,3463"
  sha256 "a3e251128997d9f1e3cbcc3bfb0c93bc201e4fbd9e0aa7dfa3640aa55fc2bad1"

  url "https://dcdn.typefaceapp.com/Typeface-#{version.csv.first}-#{version.csv.second}/Typeface-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Typeface"
  desc "Font manager application"
  homepage "https://typefaceapp.com/"

  livecheck do
    url "https://dcdn.typefaceapp.com/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Typeface.app"
end
