cask "wechatwork" do
  version "3.1.10.90255"
  sha256 "279bef9c6bf5a41f2aee4ead27fcbfd58cd9ec2c2788f83742a36444c7c4f79a"

  url "https://dldir1.qq.com/wework/work_weixin/WeCom_#{version}.dmg"
  name "WeChat Work"
  name "企业微信"
  desc "Messaging and calling application"
  homepage "https://work.weixin.qq.com/"

  livecheck do
    url "https://work.weixin.qq.com/wework_admin/commdownload?platform=mac"
    strategy :header_match
  end

  auto_updates true

  app "企业微信.app"

  uninstall quit: "com.tencent.WeWorkMac"
end
