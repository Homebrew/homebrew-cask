cask "wechatwork" do
  if Hardware::CPU.intel?
    version "4.0.9.90603"
    sha256 "41dba6d0640c15deffc2f20d0141341ea00aa3329aa0b7417157e350cb12a3b7"
  else
    version "4.0.9.99149"
    sha256 "729454773c96dc4b4d577ef09cb3015a67d0978cfd9c3934c44906399f47be08"
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
