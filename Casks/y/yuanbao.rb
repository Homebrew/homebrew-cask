cask "yuanbao" do
  version "2.86.0.613,062be232786fcb990ab664c205e1695f"
  sha256 "79bdeec31cad270b6b549237f2e71a4a366c9ec9025f4a512a5453013738293d"

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
  depends_on :macos

  app "元宝.app"

  uninstall quit: "com.tencent.yuanbao"

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
