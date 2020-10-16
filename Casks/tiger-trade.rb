cask "tiger-trade" do
  version "6.2.2,20201015:9AE86B"
  sha256 "afe11b0551e8f6587f5e4fe0c199b5f5ca2c974056f8f3f73ff10705ec3ef25a"

  # s.tigerfintech.com/ was verified as official when first introduced to the cask
  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}.dmg"
  appcast "https://up.play-analytics.com/app/upgrade/latest?lang=zh_CN&platform=darwin&appVer=1"
  name "Tiger Trade"
  name "老虎证券"
  desc "Trading platform"
  homepage "https://www.itiger.com/download/mac"

  depends_on macos: ">= :sierra"

  app "Tiger Trade.app"
end
