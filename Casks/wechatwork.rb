cask "wechatwork" do
  if Hardware::CPU.intel?
    version "4.0.8.90571"
    sha256 "f93c8da207ece05b6745acfbd61a21cc7b170b2fb3aec2ad0ab23474b923dcfa"
  else
    version "4.0.8.99121"
    sha256 "4344f1872668e1602852e8711d4ce24fd169526bf9eedefe39e5d19db88eaee8"
  end

  url "https://dldir1.qq.com/foxmail/wecom-mac/update/WeCom_#{version}.dmg"
  name "WeChat Work"
  name "企业微信"
  desc "Messaging and calling application"
  homepage "https://work.weixin.qq.com/"

  livecheck do
    if Hardware::CPU.intel?
      url "https://work.weixin.qq.com/wework_admin/commdownload?platform=mac"
      strategy :header_match
    else
      url :homepage
      regex(%r{href=.*/wecom-mac/update/WeCom[-_.](\d+(?:\.\d+)+)\.dmg}i)
    end
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
