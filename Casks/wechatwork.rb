cask "wechatwork" do
  version "4.0.0.99028"
  sha256 "106a2be7da56cfe3903e3a987f824ff9f5fe46caa9f70b9ca8f3761be913411a"

  url "https://dldir1.qq.com/foxmail/wecom-mac/sparkle/publish/WeCom_#{version}.zip"
  name "WeChat Work"
  name "企业微信"
  desc "Messaging and calling application"
  homepage "https://work.weixin.qq.com/"

  livecheck do
    url "https://work.weixin.qq.com/wework_admin/commdownload?platform=mac"
    strategy :header_match
  end

  auto_updates true

  app "WeCom_#{version}/企业微信.app"

  uninstall quit: "com.tencent.WeWorkMac"
end
