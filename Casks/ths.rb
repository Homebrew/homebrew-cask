cask "ths" do
  version "4.0.3,7.0.30"
  sha256 :no_check

  url "https://download.10jqka.com.cn/index/download/id/113/"
  name "ths"
  desc "Stock trading software"
  homepage "https://download.10jqka.com.cn/free/mac"

  livecheck do
    strategy :extract_plist
  end

  app "同花顺.app"

  zap trash: [
    "~/Library/Containers/cn.com.10jqka.macstock",
    "~/Library/Containers/cn.com.10jqka.macstock.widget",
    "~/Library/Application Scripts/cn.com.10jqka.macstock",
    "~/Library/Application Scripts/cn.com.10jqka.macstock.widget",
  ]
end
