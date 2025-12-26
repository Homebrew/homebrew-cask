cask "yingfu-online" do
  arch arm: "arm64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "18ec50717fc2c1b06b20f95837b70c33dfe7280b1f2bcd624e9162c1fc8b510e",
         intel: "b9f8a26ef400660e7a5c0375af707265493f8649c292e0a1245ec1bf4a5be376"

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
