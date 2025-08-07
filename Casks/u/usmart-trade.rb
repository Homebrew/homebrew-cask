cask "usmart-trade" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "mac_arm", intel: "mac"

  on_arm do
    version "4.2.2,c1daa11d-6480-4401-8562-113745fbc4ee,2025-08-07"
    sha256 "d35f6157750d5085722c56e4fd438a87a69420e39885e64fec96ceee32b46d15"
  end
  on_intel do
    version "4.2.2,bde2741a-5f16-4dc3-b40b-cd3ff46eb20a,2025-08-07"
    sha256 "52d539582baa90e9ae4e619a14eea1173fa66690fec5508beab7f3a733b00d12"
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
