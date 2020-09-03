cask "tiger-trade" do
  version "6.1.0,20200902:89AB7E"
  sha256 "f6e3a945c05fa9079ace777cfd1383e17962a513608beeb0de8d61889441b47a"

  # s.tigerfintech.com/ was verified as official when first introduced to the cask
  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}.dmg"
  appcast "https://up.play-analytics.com/app/upgrade/latest?lang=zh_CN&platform=darwin&appVer=1"
  name "Tiger Trade"
  name "老虎证券"
  homepage "https://www.itiger.com/download/mac"

  depends_on macos: ">= :sierra"

  app "Tiger Trade.app"
end
