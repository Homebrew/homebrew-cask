cask "yate" do
  version "6.0.1"
  sha256 "f0fdf599d093e110f8acca4c9cbd68dc7f81e6c502d78a1f75c773a8db92e0e0"

  url "https://2manyrobots.com/Updates/Yate/Yate.zip"
  appcast "https://2manyrobots.com/Updates/Yate/appcast.xml"
  name "Yate"
  homepage "https://2manyrobots.com/yate/"

  auto_updates true

  app "Yate.app"
end
