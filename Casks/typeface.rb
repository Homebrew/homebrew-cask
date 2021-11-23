cask "typeface" do
  version "3.4.1,3046"
  sha256 "7706eca286f2b59d97a1e217ca64b44b9dd25f4fdc2acdefe463091eb1b2a3dd"

  url "https://dcdn.typefaceapp.com/Typeface-#{version.before_comma}-#{version.after_comma}/Typeface-#{version.before_comma}-#{version.after_comma}.dmg"
  name "Typeface"
  desc "Font manager application"
  homepage "https://typefaceapp.com/"

  livecheck do
    url "https://dcdn.typefaceapp.com/appcast.xml"
    strategy :sparkle
  end

  app "Typeface.app"
end
