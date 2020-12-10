cask "typeface" do
  version "2.7.0,2023"
  sha256 :no_check

  url "https://dcdn.typefaceapp.com/latest"
  appcast "https://dcdn.typefaceapp.com/appcast.xml"
  name "Typeface"
  desc "Font manager application"
  homepage "https://typefaceapp.com/"

  app "Typeface.app"
end
