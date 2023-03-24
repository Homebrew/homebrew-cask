cask "yate" do
  version "6.14"
  sha256 :no_check

  url "https://2manyrobots.com/Updates/Yate/Yate.zip"
  name "Yate"
  desc "Media file tag editor"
  homepage "https://2manyrobots.com/yate/"

  livecheck do
    url "https://2manyrobots.com/Updates/Yate/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Yate.app"

  zap trash: [
    "~/Library/Application Support/Yate",
    "~/Library/Preferences/com.2manyrobots.Yate.plist",
  ]
end
