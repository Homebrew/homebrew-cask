cask "yate" do
  version "8.0.1.1"
  sha256 :no_check

  on_sierra :or_older do
    url "https://2manyrobots.com/Updates/YateOM/Yate.zip"
  end
  on_high_sierra :or_newer do
    url "https://2manyrobots.com/Updates/Yate/Yate.zip"
  end

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
