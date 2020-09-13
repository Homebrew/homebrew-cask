cask "yate" do
  version "6.0.2"
  sha256 "8b39b31dc1d1f04579aef5bd2d2e606e14250b05748822ac5f19e15e0cd2b521"

  url "https://2manyrobots.com/Updates/Yate/Yate.zip"
  appcast "https://2manyrobots.com/Updates/Yate/appcast.xml"
  name "Yate"
  homepage "https://2manyrobots.com/yate/"

  auto_updates true

  app "Yate.app"
end
