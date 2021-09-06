cask "tiger-trade" do
  version "6.5.2,20201217:B9BB45"
  sha256 "6d3ded90dbfb092705276c62ad04b05b937ab41a831f821617ff22998cf50645"

  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}.dmg",
      verified: "s.tigerfintech.com/"
  appcast "https://up.play-analytics.com/app/upgrade/latest?lang=zh_CN&platform=darwin&appVer=1"
  name "Tiger Trade"
  name "老虎证券"
  desc "Trading platform"
  homepage "https://www.itiger.com/download/"

  depends_on macos: ">= :sierra"

  app "Tiger Trade.app"
end
