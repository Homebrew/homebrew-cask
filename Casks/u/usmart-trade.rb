cask "usmart-trade" do
  version "4.6.11,20261002_162143,3598cac7-3745-4918-903e-a430e9b2a54c,2026-10-02"
  sha256 "4cc95546a6589235c8e442fd0c7831d185c399c8a32f3214cc3d74eaf3b8dd20"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.usmart.mac.test.sfl*",
    "~/Library/Application Support/uSmart",
    "~/Library/Preferences/com.usmart.mac.test.plist",
    "~/Library/Saved Application State/com.usmart.mac.test.savedState",
  ]
end
