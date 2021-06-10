cask "tradingview" do
  version "1.0.0-beta.6"
  sha256 "7362c947c1a61b434a6bf9f3bc5a23a6dfa5ed60deec6e022ec7260de5d29fc5"

  url "https://tvd-packages.tradingview.com/stable/#{version}/darwin/TradingView.dmg"
  name "TradingView Desktop"
  desc "Experience with the power and flexibility of a desktop application"
  homepage "https://www.tradingview.com/desktop/"

  livecheck do
    url "https://tvd-packages.tradingview.com/stable/latest/darwin/stable-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "TradingView.app"

  zap trash: [
    "~/Library/Application Support/TradingView",
    "~/Library/Preferences/com.tradingview.tradingviewapp.desktop.plist",
    "~/Library/Saved Application State/com.tradingview.tradingviewapp.desktop.savedState",
  ]
end
