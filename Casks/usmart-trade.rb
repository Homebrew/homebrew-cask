cask "usmart-trade" do
  version "3.20.2,42922e52-94e2-45f0-baa0-c6a993692a11,2023-04-13"
  sha256 "bbd9515f44fd997117ed1cafd869b6d5a71aa9295c35d3884f94dbd19d0237c1"

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
