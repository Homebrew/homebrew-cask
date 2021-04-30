cask "wechatwork" do
  version "3.1.6.90148"
  sha256 "36461ae97d9e0dd1bdb01f8638525db2d2fd1aa4e859114d5012a6d7ab5669e7"

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
