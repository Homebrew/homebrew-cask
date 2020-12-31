cask "tagalicious" do
  version "1.5.5"
  sha256 :no_check

  url "http://files.thelittleappfactory.com/tagalicious/Tagalicious.zip"
  name "Tagalicious"
  homepage "http://thelittleappfactory.com/tagalicious/"

  livecheck do
    url "http://files.thelittleappfactory.com/tagalicious/appcast.xml"
    strategy :sparkle
  end

  app "Tagalicious.app"
end
