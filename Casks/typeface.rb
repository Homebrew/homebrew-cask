cask "typeface" do
  version "3.2.2,2945"
  sha256 "f37debb9c0b06ce583b52d775b3d3133178059efb44ac57ce945e8b61c97bf94"

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
