cask "tiger-trade" do
  version "7.13.2,20220429,417A80"
  sha256 "e327d9ffc6c430b303664c7126436f4fb1b6f58a1a9e8cad326f240929e4eb1c"

  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.tr(",", "_")}.dmg",
      verified: "s.tigerfintech.com/"
  name "Tiger Trade"
  name "老虎证券"
  desc "Trading platform"
  homepage "https://www.tigerbrokers.com.sg/download/"

  livecheck do
    url "https://up.play-analytics.com/app/upgrade/latest?lang=zh_CN&platform=darwin&appVer=1"
    strategy :page_match do |page|
      match = page.match(/downloadUrl.*?TigerTrade[._-]v?(\d+(?:\.\d+)+)[._-](\d+(?:\.\d+)*)[._-](\h+).dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "Tiger Trade.app"
end
