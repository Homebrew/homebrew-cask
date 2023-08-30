cask "usmart-trade" do
  version "3.25.0,37124a51-a2b1-4bf1-8cae-3771cb33d5a4,2023-08-25"
  sha256 "cf42a793b0fd6c2a1c1ef68d25d3584cfa896793d82564b43fc2524220127bd3"

  url "https://jy-common-prd-1257884527.cos.ap-guangzhou.myqcloud.com/admin/app-version-file/#{version.csv.third}/#{version.csv.second}/uSMART%20Trade-#{version.csv.first}.dmg",
      verified: "jy-common-prd-1257884527.cos.ap-guangzhou.myqcloud.com/"
  name "uSMART Trade"
  desc "Stock and options trading platform"
  homepage "https://www.usmartglobal.com/"

  livecheck do
    url "https://www.usmart.hk/en/download"
    regex(%r{href=['"].*?file/(\d+[-_]\d+[-_]\d+)/((?:\w+-)+(?:\w+))/.*?Trade[-_]?(\d+(?:\.\d+)+).dmg}i)
    strategy :page_match do |page|
      page.scan(regex)
          .map { |match| "#{match[2]},#{match[1]},#{match[0]}" }
    end
  end

  app "uSMART Trade.app"

  zap trash: [
    "~/Library/Application Support/uSmart",
    "~/Library/Preferences/com.usmart.mac.test.plist",
    "~/Library/Saved Application State/com.usmart.mac.test.savedState",
  ]
end
