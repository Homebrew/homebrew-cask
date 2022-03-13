cask "wechatwork" do
  version "4.0.2.90460"
  sha256 "1636b040fd2c7f274456b21c2d4bd2e704e45d2ce4b42f8a0363c062520bbc08"

  url "https://dldir1.qq.com/foxmail/wecom-mac/update/WeCom_#{version}.dmg"
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
