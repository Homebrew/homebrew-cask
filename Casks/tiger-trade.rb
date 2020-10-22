cask "tiger-trade" do
  version "6.3.0,20201021:9BD3E9"
  sha256 "66ef2b3bf3e524a07f0bf7b537269313462c881210e48a9fb9c646a4a7904d2b"

  # s.tigerfintech.com/ was verified as official when first introduced to the cask
  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}.dmg"
  appcast "https://up.play-analytics.com/app/upgrade/latest?lang=zh_CN&platform=darwin&appVer=1"
  name "Tiger Trade"
  name "老虎证券"
  desc "Trading platform"
  homepage "https://www.itiger.com/download/"

  depends_on macos: ">= :sierra"

  app "Tiger Trade.app"
end
