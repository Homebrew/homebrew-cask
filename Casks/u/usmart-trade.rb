cask "usmart-trade" do
  version "3.28.2,fc0fd290-d88e-438a-b4d0-706ee50408e2,2024-09-19"
  sha256 "8883e2b9d45619c701d66ac290792b210c098b160766a4f75f18afb2c6985787"

  url "https://jy-common-prd-1257884527.cos.ap-guangzhou.myqcloud.com/admin/app-version-file/#{version.csv.third}/#{version.csv.second}/uSMART%20Trade-#{version.csv.first}.dmg",
      verified: "jy-common-prd-1257884527.cos.ap-guangzhou.myqcloud.com/"
  name "uSMART Trade"
  desc "Stock and options trading platform"
  homepage "https://www.usmartglobal.com/"

  livecheck do
    url "https://www.usmart.hk/en/download"
    regex(%r{href=['"].*?file/(\d+[-_]\d+[-_]\d+)/((?:\w+-)+(?:\w+))/.*?Trade[-_]?(\d+(?:\.\d+)+).dmg}i)
    strategy :page_match do |page, regex|
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

  caveats do
    requires_rosetta
  end
end
