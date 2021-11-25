cask "tiger-trade" do
  version "7.5.3,20211119,AAC792"
  sha256 "e7a896cedb739705d9a3c9d6e2d572184652f81a0bbe8ad2c93b8cd959f5074b"

  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.tr(",", "_")}.dmg",
      verified: "s.tigerfintech.com/"
  name "Tiger Trade"
  name "老虎证券"
  desc "Trading platform"
  homepage "https://www.itiger.com/download/"

  livecheck do
    url "https://up.play-analytics.com/app/upgrade/latest?lang=zh_CN&platform=darwin&appVer=1"
    strategy :page_match do |page|
      match = page.match(/downloadUrl.*?TigerTrade[._-]v?(\d+(?:\.\d+)+)[._-](\d+(?:\.\d+)*)[._-]([a-z\d]+).dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "Tiger Trade.app"
end
