cask "tradingview" do
  version "1.0.0-beta.1"
  sha256 "3aa3829f41e0e2891cf2c9bf247f6a3faf2be80bf779bbf6e8f1046e05418527"

  url "https://tvd-packages.tradingview.com/beta/#{version}/win32/x64/TradingView.dmg"
  name "TradingView Desktop Beta"
  desc "Desktop client for TradingView"
  homepage "https://www.tradingview.com/blog/en/tradingview-desktop-beta-is-out-now-21962/"

  app "TradingView.app"

  zap trash: [
    "~/Library/Application Support/TradingView",
    "~/Library/Preferences/com.tradingview.tradingviewapp.desktop.plist",
    "~/Library/Saved Application State/com.tradingview.tradingviewapp.desktop.savedState",
  ]
end
