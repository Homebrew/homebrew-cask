cask "usmart-trade" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "mac_arm", intel: "mac"

  on_arm do
    version "4.2.0,21d5bbdb-209e-4318-9179-2cf085591dfc,2025-07-30"
    sha256 "7e615baf773ca7e05b1ca8ea5318013a7ee622c5213f399679d6628e16cba062"
  end
  on_intel do
    version "4.2.0,f1f60745-094c-48c8-9240-1d5a17e58c0f,2025-07-30"
    sha256 "a7fe0aebc7fbfea5f0ea69cd7a8549a90060e62ed5131850a14223124ead4fa6"
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
