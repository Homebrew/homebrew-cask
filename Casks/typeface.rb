cask "typeface" do
  version "3.0.0,2765"
  sha256 "714596f4b86e4012c27f817170ac12c8c29429d01b34dc811214daa608f53773"

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
