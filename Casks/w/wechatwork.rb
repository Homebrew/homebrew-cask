cask "wechatwork" do
  arch arm: "Apple", intel: "Intel"
  livecheck_folder = on_arch_conditional arm: "_arm64"

  on_arm do
    version "5.0.11.99983"
    sha256 "6e236c0bd4750983f0d83210738a3ecfe184d925fffff8da31f3564b01284f92"
  end
  on_intel do
    version "5.0.11.91267"
    sha256 "e90db283d7812e9601e023663dbcc95044f94d0178faa8965264b11733b1c3cd"
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
  depends_on :macos

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
