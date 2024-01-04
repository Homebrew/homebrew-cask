cask "usmart-trade" do
  version "3.27.0,85a07f5e-6dfe-4d57-a53a-32973b9501bd,2024-01-04"
  sha256 "30a99e92c48a42032cf2d3c445e7226cfc8af5ed2ffc17858343b20d88f34481"

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
