cask "tiger-trade" do
  version "6.2.1,20200929:8DCA2C"
  sha256 "73339df58fb315e223d8393f8019befa39ade2da6f762907bf0c27f6eeb21a7a"

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
