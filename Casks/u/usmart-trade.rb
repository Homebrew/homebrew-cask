cask "usmart-trade" do
  version "4.6.2,20260601_194147,15157369-13bd-4067-9183-4934d6696b5c,2026-06-01"
  sha256 "76c994ca612ffd52b7de674f2a836c6cc38c9d758fc43a26edb643c3849556e8"

  url "https://jy-common-prd-1257884527.cos.ap-guangzhou.myqcloud.com/admin/app-version-file/#{version.csv.fourth}/#{version.csv.third}/usmart_macapp_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "jy-common-prd-1257884527.cos.ap-guangzhou.myqcloud.com/"
  name "uSMART Trade"
  desc "Stock and options trading platform"
  homepage "https://www.usmartglobal.com/"

  livecheck do
    url "https://jy.yxzq.com/config-manager-admin/api/get-latest-package/v1", post_json: {
      appType: 7,
      system:  "mac",
    }
    regex(%r{file/(\d+[-_]\d+[-_]\d+)/((?:\w+-)+(?:\w+))/usmart[._-]macapp[-_]?(\d+(?:\.\d+)+)[-_](\d+[-_]\d+)\.dmg}i)
    strategy :json do |json, regex|
      match = json.dig("data", 0, "url")&.match(regex)
      next if match.blank?

      "#{match[3]},#{match[4]},#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: :monterey

  app "uSMART Trade.app"

  zap trash: [
    "~/Library/Application Support/uSmart",
    "~/Library/Preferences/com.usmart.mac.test.plist",
    "~/Library/Saved Application State/com.usmart.mac.test.savedState",
  ]
end
