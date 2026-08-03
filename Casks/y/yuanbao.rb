cask "yuanbao" do
  version "2.79.0.613,b85e24a0f84f08d06129dd47490ab57f"
  sha256 "232e0c59871d71af89c0d728ee0ac9c07a424906b8ed223382621c83b81eff4a"

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

  auto_updates true
  depends_on macos: :big_sur

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
