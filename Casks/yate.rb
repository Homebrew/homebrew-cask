cask "yate" do
  version "6.6.1.1,10542"
  sha256 :no_check

  url "https://2manyrobots.com/Updates/Yate/Yate.zip"
  name "Yate"
  desc "Media file tag editor"
  homepage "https://2manyrobots.com/yate/"

  livecheck do
    url "https://2manyrobots.com/Updates/Yate/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Yate.app"
end
