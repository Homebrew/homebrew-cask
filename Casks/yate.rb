cask "yate" do
  version "6.1.0.1"
  sha256 "854c0d487d79a7ca1952ae32c0d8ef6f9646235f1ed0f7e6ba54b70801601681"

  url "https://2manyrobots.com/Updates/Yate/Yate.zip"
  appcast "https://2manyrobots.com/Updates/Yate/appcast.xml"
  name "Yate"
  homepage "https://2manyrobots.com/yate/"

  auto_updates true

  app "Yate.app"
end
