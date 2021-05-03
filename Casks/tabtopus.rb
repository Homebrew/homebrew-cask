cask "tabtopus" do
  version "4.2,4200"
  sha256 "7ba5c2247f2f04393be5d7af5d5c58c1e3f1daafc250e099ffa955333ebf7bd8"

  url "https://www.mariogt.com/appsChest/TabTopus#{version.before_comma.dots_to_hyphens}.zip"
  name "TabTopus"
  desc "Web browser tabs URL exporter"
  homepage "https://www.mariogt.com/tabtopus.html"

  livecheck do
    url "https://www.mariogt.com/appsChest/tabtopusAppCast.xml"
    strategy :sparkle
  end

  app "TabTopus.app"

  zap trash: [
    "~/Library/Preferences/com.mariogt.tabtopus.plist",
  ]
end
