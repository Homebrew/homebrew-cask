cask "yuanbao" do
  version "2.41.0.616,0dc7f392d4e684df01c85f053c253c9d"
  sha256 "0bc23de710b60f0e6a4543515b44f0200c9c343a002e366c2f187c77d33fbbd9"

  url "https://cdn-hybrid-prod.hunyuan.tencent.com/Desktop/official/#{version.csv.second}/yuanbao_#{version.csv.first}_universal.dmg"
  name "Yuanbao"
  desc "Tencent AI Assistant with Hunyuan and DeepSeek LLMs"
  homepage "https://yuanbao.tencent.com/"

  livecheck do
    url "https://yuanbao.tencent.com/api/info/public/general"
    regex(%r{/official/(\h+)/yuanbao[._-]v?(\d+(?:\.\d+)+)[._-]universal\.dmg}i)
    strategy :json do |json, regex|
      match = json.dig("pcDownloadUrl", "mac")&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "腾讯元宝.app"

  zap trash: [
    "~/Library/Application Support/com.tencent.yuanbao",
    "~/Library/Caches/com.tencent.yuanbao",
    "~/Library/Containers/com.tencent.yuanbao",
    "~/Library/HTTPStorages/com.tencent.yuanbao",
    "~/Library/HTTPStorages/com.tencent.yuanbao.binarycookies",
    "~/Library/Preferences/com.tencent.yuanbao.plist",
    "~/Library/WebKit/com.tencent.yuanbao",
  ]
end
