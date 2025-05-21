cask "yuanbao" do
  version "1.15.0.613"
  sha256 "e3e9e60125ee64b77bc47b93437fe50470f265f726b94a913429326189e95bd2"

  url "https://cdn-hybrid-prod.hunyuan.tencent.com/Desktop/official/bb545842ccef80eff28c7b1c98d74092/yuanbao_#{version}_universal.dmg"
  name "Yuanbao"
  desc "Tencent AI Assistant with Hunyuan and DeepSeek LLMs"
  homepage "https://yuanbao.tencent.com/"

  livecheck do
    skip "No reliable version information available"
  end

  depends_on macos: ">= :big_sur"

  app "腾讯元宝.app"
end
