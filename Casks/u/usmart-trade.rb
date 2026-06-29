cask "usmart-trade" do
  version "4.6.6,20260629_095517,023c9348-c837-4e95-b163-b65b3df276c3,2026-06-29"
  sha256 "b007139239276438876b1d7e7a9709a7e8a170aabbaa85976abce398d0be6b86"

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
