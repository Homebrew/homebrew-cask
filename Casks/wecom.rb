cask "WeCom" do
  if Hardware::CPU.intel?
    version "4.0.6.90539"
    sha256 "2ead9f3083492edf07bec85c4e41f0a8ae8219869786708e883b80d2c35c7238"
  else
    version "4.0.6.99101"
    sha256 "51f115fb3ab77cccc081b1f8b06d4adfef59ee00491f1683ec306eedb0705d68"
  end

  url "https://dldir1.qq.com/foxmail/wecom-mac/update/WeCom_#{version}.dmg"
  name "WeCom"
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
