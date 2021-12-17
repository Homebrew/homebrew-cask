cask "waltr-pro" do
  version "3.7.98"
  sha256 "3818e93ac674c54b199148ebbfb5c2742051cb6580db514fb76a26dbc4a35282"

  url "https://shining.softorino.com/shine_uploads/waltrpromac_#{version}.dmg"
  name "WALTR PRO"
  desc "Media conversion and direct transfer tool for Apple devices"
  homepage "https://softorino.com/waltr/"

  livecheck do
    url "https://api.softorino.com/v1/app-manager/waltrpro/mac/updates"
    strategy :sparkle
  end

  app "WALTR PRO.app"

  zap trash: [
    "~/Library/Application Support/WALTR PRO",
    "~/Library/Preferences/com.softorino.waltrpro.plist",
    "/Users/Shared/WALTR PRO",
  ]
end
