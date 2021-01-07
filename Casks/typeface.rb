cask "typeface" do
  version "2.7.0,2023"
  sha256 :no_check

  url "https://dcdn.typefaceapp.com/latest"
  name "Typeface"
  desc "Font manager application"
  homepage "https://typefaceapp.com/"

  livecheck do
    url "https://dcdn.typefaceapp.com/appcast.xml"
    strategy :sparkle
  end

  app "Typeface.app"
end
