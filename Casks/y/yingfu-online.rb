cask "yingfu-online" do
  arch arm: "arm64", intel: "x64"

  version "1.2.2"
  sha256 arm:   "b39cc50bb72888577e330fd0cfe5e6a032d8b459e55052676459723b9b661d64",
         intel: "144be9104c0d988ecd3beaa6a6685d4ea49200f89090567a99a3ba4e29227015"

  url "https://online.yingfu.com.cn/cdn/desktop-release/stable/darwin/#{arch}/%E8%8B%B1%E5%AD%9A%E4%B9%90%E5%AD%A6%20#{version}%20(#{arch}).dmg"
  name "Yingfu Online"
  desc "Education app for teens"
  homepage "https://online.yingfu.com.cn/pc-official-website/index.html"

  livecheck do
    url "https://online.yingfu.com.cn/cdn/desktop-release/stable/darwin/#{arch}/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "英孚乐学.app"

  zap trash: [
    "~/Library/Application Support/YingfuOnlineDesktop",
    "~/Library/Caches/cn.com.yingfu.online",
    "~/Library/Caches/cn.com.yingfu.online.ShipIt",
    "~/Library/HTTPStorages/cn.com.yingfu.online",
    "~/Library/Preferences/ByHost/cn.com.yingfu.online.ShipIt*",
    "~/Library/Preferences/cn.com.yingfu.online.plist",
  ]
end
