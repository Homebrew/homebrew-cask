cask "wechatwork" do
  arch arm: "Apple", intel: "Intel"
  livecheck_folder = on_arch_conditional arm: "_arm64"

  on_arm do
    version "4.1.36.99603"
    sha256 "0f9225d08f5a877e9bb67fab99ca21bca46e23aef788138946e3d7d6e3690e76"
  end
  on_intel do
    version "4.1.36.91041"
    sha256 "8e4a75a763896c079846b63239675cf25dd58bb5550a0c5a4c16976554661600"
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
