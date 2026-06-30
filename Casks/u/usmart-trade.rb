cask "usmart-trade" do
  version "4.6.6,20260630_144807,72ef48f9-723a-43c2-bff6-dd28fe1af30c,2026-06-30"
  sha256 "82a319a4c39dd26e4628b6ddb885eb2fc57c6de335549690b4ac0aa0882e3f1a"

  url "https://hk-static.usmartglobal.com/admin/app-version-file/#{version.csv.fourth}/#{version.csv.third}/usmart_macapp_#{version.csv.first}_#{version.csv.second}.dmg"
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
