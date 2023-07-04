cask "ths" do
  version "4.0.3"
  sha256 "757c65787375723eda5b35005cc0d37dd848c49d3e5d79b5a8bc963fa2257617"

  url "https://resource.thsi.cn/soft/ThsMac#{version}.dmg",
      verified: "resource.thsi.cn/soft/"
  name "Straight Flush"
  name "同花顺"
  desc "Stock trading software"
  homepage "https://download.10jqka.com.cn/free/mac"

  livecheck do
    url "https://download.10jqka.com.cn/index/download/id/113/"
    strategy :header_match
  end

  app "同花顺.app"

  zap trash: [
    "~/Library/Application Scripts/cn.com.10jqka.macstock",
    "~/Library/Application Scripts/cn.com.10jqka.macstock.widget",
    "~/Library/Containers/cn.com.10jqka.macstock",
    "~/Library/Containers/cn.com.10jqka.macstock.widget",
  ]
end
