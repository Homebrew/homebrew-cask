cask "wechatwork" do
  arch arm: "_arm64"

  on_intel do
    version "4.0.19.90647"
    sha256 "0959819d66810e092f9d5021536841cb04d7872f5737f2621dc1242ffc5340ea"
  end
  on_arm do
    version "4.0.19.99192"
    sha256 "6d39ef7750f6aeddf54e57fcf8f03174de16d41edb314bf9c3d14de7e55fed02"
  end

  url "https://dldir1.qq.com/foxmail/wecom-mac/update/WeCom_#{version}.dmg"
  name "WeChat Work"
  name "企业微信"
  desc "Messaging and calling application"
  homepage "https://work.weixin.qq.com/"

  livecheck do
    url "https://work.weixin.qq.com/wework_admin/commdownload?platform=mac#{arch}"
    strategy :header_match
  end

  auto_updates true

  app "企业微信.app"

  uninstall quit: "com.tencent.WeWorkMac"

  zap trash: [
    "~/Library/Application Scripts/com.tencent.WeWorkMac",
    "~/Library/Application Scripts/88L2Q4487U.com.tencent.WeWorkMac",
    "~/Library/Application Scripts/88L2Q4487U.com.tencent.WeWorkMacDebug",
    "~/Library/Application Scripts/88L2Q4487U.com.tencent.WeWorkMacUIDev",
    "~/Library/Application Scripts/88L2Q4487U.com.tencent.WeWorkMac.dev",
    "~/Library/Application Scripts/88L2Q4487U.com.tencent.WeWorkMac.IPCHelper",
    "~/Library/Containers/com.tencent.WeWorkMac",
    "~/Library/Containers/88L2Q4487U.com.tencent.WeWorkMac",
    "~/Library/Containers/88L2Q4487U.com.tencent.WeWorkMacDebug",
    "~/Library/Containers/88L2Q4487U.com.tencent.WeWorkMacUIDev",
    "~/Library/Containers/88L2Q4487U.com.tencent.WeWorkMac.dev",
    "~/Library/Containers/88L2Q4487U.com.tencent.WeWorkMac.IPCHelper",
  ]
end
