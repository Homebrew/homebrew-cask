cask "tiger-trade" do
  version "6.1.2,20200908:8A94F4"
  sha256 "fbbf1ef9c2594c3e9bd80db5a830415876cf7e38b4a0ac76c6515fb9538d2a3d"

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
