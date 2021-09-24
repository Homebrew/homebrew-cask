cask "tradingview" do
  version "1.0.0-beta.12"
  sha256 "4506a0bc3bc2558d5a8a486e329021baedaea2f41f976ab73aa01e4e1abd7460"

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
