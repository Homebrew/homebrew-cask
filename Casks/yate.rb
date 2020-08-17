cask "yate" do
  version "6.0.1.1"
  sha256 "a585d1f237487009bac075b6c39d6fa983efd8edb61ceb120117499055aca39d"

  url "https://2manyrobots.com/Updates/Yate/Yate.zip"
  appcast "https://2manyrobots.com/Updates/Yate/appcast.xml"
  name "Yate"
  homepage "https://2manyrobots.com/yate/"

  auto_updates true

  app "Yate.app"
end
