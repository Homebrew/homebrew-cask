cask "usmart-trade" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "mac_arm", intel: "mac"

  on_arm do
    version "4.0.1,e85bf59d-b357-4966-9439-f9719b8dd7b1,2025-05-06"
    sha256 "803d104dcf7720ea8fa07f05f66ee97c118f11c4def9c90675a8b46a1e25894f"
  end
  on_intel do
    version "4.0.0,41c1145e-cafa-454a-a7f1-c67ddaeafd19,2025-03-26"
    sha256 "c6b79d90f1f496e5c679472ff58586c86e5f930e5417e1860c1f9e6ce75a1a00"
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
