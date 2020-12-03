cask "tiger-trade" do
  version "6.5.0,20201203:B7905C"
  sha256 "42bbb906e753bd612a16e52dd1133a19d8d2c59c9464483adbb7538321244f8a"

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
