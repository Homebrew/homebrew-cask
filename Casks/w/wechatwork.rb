cask "wechatwork" do
  arch arm: "Apple", intel: "Intel"
  livecheck_folder = on_arch_conditional arm: "_arm64"

  on_arm do
    version "4.1.26.99469"
    sha256 "e63d1c82b7ad440234d36bb1c93e38d77a4f20865247b1fa9f4fce2a87ac8193"
  end
  on_intel do
    version "4.1.26.90928"
    sha256 "b3be33972b4425ea6e6cef41c6f6890578d38467a80f1f9088250738c3d66177"
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
