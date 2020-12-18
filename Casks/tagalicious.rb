cask "tagalicious" do
  version "1.5.5"
  sha256 :no_check

  url "http://files.thelittleappfactory.com/tagalicious/Tagalicious.zip"
  appcast "http://files.thelittleappfactory.com/tagalicious/appcast.xml"
  name "Tagalicious"
  homepage "http://thelittleappfactory.com/tagalicious/"

  app "Tagalicious.app"
end
