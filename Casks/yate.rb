cask "yate" do
  version "6.2,10075"
  sha256 :no_check

  url "https://2manyrobots.com/Updates/Yate/Yate.zip"
  appcast "https://2manyrobots.com/Updates/Yate/appcast.xml"
  name "Yate"
  homepage "https://2manyrobots.com/yate/"

  auto_updates true

  app "Yate.app"
end
