cask "zspace" do
  arch arm: "ARM"

  version "2.4.2023071305"
  sha256 arm:   "96d7abedabc469962c8c51fbc560121b53fccfb0a0b34bbab9cd1a225a51bc86",
         intel: "d58c7a5fbe52afe40431fd389b40714a994282307b0a39fe5580b425f1c5b615"

  url "https://update.zenithspace.net/app/APP_ZSPACE_DESKTOP_MAC#{arch}/V#{version}/zspace/1689577756/zspace_V#{version}.dmg",
      verified: "update.zenithspace.net/app/"
  name "zspace"
  desc "极空间苹果MAC客户端"
  homepage "https://www.zspace.cn/net"

  livecheck do
    skip "No version information available"
  end

  app "极空间.app"
end
