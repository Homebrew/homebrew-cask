cask "yuanbao" do
  version "2.35.0.612,d39108f0d946f0ecbf6e23ef5d6044da"
  sha256 "303f0c816626fc2f8d0a47f0af8a3200bc33e8fd71ff2e496cd1dfa47bf34254"

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
