cask "wechatwork" do
  version "3.1.6.90174"
  sha256 "bc5cda351bc2749b4f907c805192ee7f8e1d376e2abac719da9e7e77c575bf1d"

  url "https://dldir1.qq.com/wework/work_weixin/WeCom_#{version}.dmg"
  name "WeChat Work"
  name "企业微信"
  homepage "https://work.weixin.qq.com/"

  livecheck do
    url "https://work.weixin.qq.com/wework_admin/commdownload?platform=mac"
    strategy :header_match
  end

  app "企业微信.app"

  uninstall quit: "com.tencent.WeWorkMac"
end
