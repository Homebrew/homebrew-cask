cask "wechatwork" do
    if Hardware::CPU.intel?
        version "4.0.3.90492"
        sha256 "c7306cf208cbdc1e4b0dbcfd96f981d04dff5875616ada7d1d369c214be39a4e"
    else
        version "4.0.3.99066"
        sha256 "16ef032ea837b86d5010abdb3a371f70402fd733d3aa1b465a520fe1011999d4"
    end

    url "https://dldir1.qq.com/foxmail/wecom-mac/update/WeCom_#{version}.dmg"
    name "WeChat Work"
    name "企业微信"
    desc "Messaging and calling application"
    homepage "https://work.weixin.qq.com/"
  
    livecheck do
        skip "No version information available"
    end
  
    auto_updates true
  
    app "企业微信.app"
  
    uninstall quit: "com.tencent.WeWorkMac"
end
