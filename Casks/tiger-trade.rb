cask "tiger-trade" do
  version "7.4.6,20211020:9BA969"
  sha256 "3f719e4e2fe03739a8f1962010f78aaf5bf4eca17bc1b79632d2aac9e5146165"

  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}.dmg",
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

      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "Tiger Trade.app"
end
