cask "wechatwork" do
  arch arm: "Apple", intel: "Intel"
  livecheck_folder = on_arch_conditional arm: "_arm64"

  on_arm do
    version "4.1.39.99711"
    sha256 "428c4399c78dda7d05e61b9ea964ccad0811aeb36fd96b071751b304ad8f7e3b"
  end
  on_intel do
    version "4.1.39.91079"
    sha256 "e0ef21fca890a9a8f5026669b76425bc60d084daeab12b1bc415a1a0bef653ad"
  end

  url "https://dldir1.qq.com/foxmail/wecom-mac/updatebzl/WeCom_#{version}_#{arch}.dmg"
  name "WeChat Work"
  name "企业微信"
  desc "Messaging and calling application"
  homepage "https://work.weixin.qq.com/"

  livecheck do
    url "https://work.weixin.qq.com/wework_admin/commdownload?platform=mac#{livecheck_folder}"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "企业微信.app"

  uninstall quit: "com.tencent.WeWorkMac"

  zap trash: [
    "~/Library/Application Scripts/88L2Q4487U.com.tencent.WeWorkMac",
    "~/Library/Application Scripts/88L2Q4487U.com.tencent.WeWorkMac.dev",
    "~/Library/Application Scripts/88L2Q4487U.com.tencent.WeWorkMac.IPCHelper",
    "~/Library/Application Scripts/88L2Q4487U.com.tencent.WeWorkMacDebug",
    "~/Library/Application Scripts/88L2Q4487U.com.tencent.WeWorkMacUIDev",
    "~/Library/Application Scripts/com.tencent.WeWorkMac",
    "~/Library/Containers/88L2Q4487U.com.tencent.WeWorkMac",
    "~/Library/Containers/88L2Q4487U.com.tencent.WeWorkMac.dev",
    "~/Library/Containers/88L2Q4487U.com.tencent.WeWorkMac.IPCHelper",
    "~/Library/Containers/88L2Q4487U.com.tencent.WeWorkMacDebug",
    "~/Library/Containers/88L2Q4487U.com.tencent.WeWorkMacUIDev",
    "~/Library/Containers/com.tencent.WeWorkMac",
  ]
end
