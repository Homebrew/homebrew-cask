cask "tiger-trade" do
  version "6.4.0,20201112:A9AD82"
  sha256 "f2ce45b244765090ddf45d8fdc313be2eb709b54d690f2f0b185c73b1f743a05"

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
