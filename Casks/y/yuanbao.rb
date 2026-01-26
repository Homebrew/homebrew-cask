cask "yuanbao" do
  version "2.51.0.624,db2b99c9afa60c2af3dc2c95fed1a44b"
  sha256 "5e5346ae33d13e020a64a91e2b168a70a85a64ca2b35877c3c9f57561216acdf"

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

  depends_on macos: ">= :big_sur"

  app "元宝.app"

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
