cask "wechatwork" do
  arch arm: "Apple", intel: "Intel"
  livecheck_folder = on_arch_conditional arm: "_arm64"

  on_arm do
    version "5.0.2.99762"
    sha256 "8806d90a50785be5b7676f3edc6e592fdb786dbd808404d0e04423a1bac549fe"
  end
  on_intel do
    version "5.0.2.91115"
    sha256 "a7a120ef5c48f282e2b54bec1ba7f36f876419d23b372b4f505a546704fdfd6b"
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
