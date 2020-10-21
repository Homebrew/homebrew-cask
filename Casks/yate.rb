cask "yate" do
  version "6.0.2.1"
  sha256 "617c9356784d21f2bc1c8d3b42cba05494abdd56122367302f316cd8a459977e"

  url "https://2manyrobots.com/Updates/Yate/Yate.zip"
  appcast "https://2manyrobots.com/Updates/Yate/appcast.xml"
  name "Yate"
  homepage "https://2manyrobots.com/yate/"

  auto_updates true

  app "Yate.app"
end
