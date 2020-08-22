cask "tiger-trade" do
  version "6.0.3,20200821:7D4E93"
  sha256 "ea661dee8d805e7e1b9f4c63a4a97c22c381c568768572cc418a1b4de31efcec"

  # s.tigerfintech.com/ was verified as official when first introduced to the cask
  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}.dmg"
  appcast "https://up.play-analytics.com/app/upgrade/latest?lang=zh_CN&platform=darwin&appVer=1"
  name "Tiger Trade"
  name "老虎证券"
  homepage "https://www.itiger.com/download/mac"

  depends_on macos: ">= :sierra"

  app "Tiger Trade.app"
end
