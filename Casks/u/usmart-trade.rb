cask "usmart-trade" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "mac_arm", intel: "mac"

  on_arm do
    version "4.2.1,5f61cdb2-40be-4e39-bb3f-94987fc073f4,2025-07-31"
    sha256 "a49aa28124c0f3e7a017dc6f19025ca21fd2459a434402a32e525b5b437e78f9"
  end
  on_intel do
    version "4.2.1,0a84be8a-745b-46f5-9b37-8996116be3d4,2025-07-31"
    sha256 "6bd8af1b4557bb0e8aa92cdcd628b11a4da09b44a850a1a91943a79afa6c096a"
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
