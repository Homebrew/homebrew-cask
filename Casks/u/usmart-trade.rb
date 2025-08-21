cask "usmart-trade" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "mac_arm", intel: "mac"

  on_arm do
    version "4.2.3,c2d410a9-56c3-4787-b94b-9e40f693a10c,2025-08-21"
    sha256 "cb922b9e1e5b0c7946b2c6effc2d0b5833cf8a32b2f6ef92ad4616cd44f5f5f5"
  end
  on_intel do
    version "4.2.3,dfa931e6-d47a-436f-8f30-00cbbf7e3aa8,2025-08-21"
    sha256 "a0cb4c03681f443cc5bf0889ededeb18d007e3b4916e63b9daa8258026f072f5"
  end

  url "https://jy-common-prd-1257884527.cos.ap-guangzhou.myqcloud.com/admin/app-version-file/#{version.csv.third}/#{version.csv.second}/uSMART%20Trade-#{version.csv.first}#{arch}.dmg",
      verified: "jy-common-prd-1257884527.cos.ap-guangzhou.myqcloud.com/"
  name "uSMART Trade"
  desc "Stock and options trading platform"
  homepage "https://www.usmartglobal.com/"

  livecheck do
    url "https://jy.yxzq.com/config-manager-admin/api/get-latest-package/v1", post_json: {
      appType: 7,
      system:  livecheck_arch,
    }
    regex(%r{file/(\d+[-_]\d+[-_]\d+)/((?:\w+-)+(?:\w+))/.*?Trade[-_]?(\d+(?:\.\d+)+)#{arch}\.dmg}i)
    strategy :json do |json, regex|
      match = json.dig("data", 0, "url")&.match(regex)
      next if match.blank?

      "#{match[3]},#{match[2]},#{match[1]}"
    end
  end

  app "uSMART Trade.app"

  zap trash: [
    "~/Library/Application Support/uSmart",
    "~/Library/Preferences/com.usmart.mac.test.plist",
    "~/Library/Saved Application State/com.usmart.mac.test.savedState",
  ]
end
