cask "yingfu-online" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "e3fcc3a189d43dcbee51eb320aa29883b8d111e61f60be4c5b44b0f35dafd4f1",
         intel: "31d7c2c90b7e607fb6ebcabe15089473fce8b5bd96b5249f80c34f6a2eb4ea58"

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
