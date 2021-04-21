cask "tradingview" do
  version "1.0.0-beta.1"
  sha256 "03b03d765ff7f8cb1f3059490b64344e38aa35bf44e161327b7b8baeac66aa2c"

  url "https://tvd-packages.tradingview.com/beta/#{version}/win32/x64/TradingView.dmg"
  name "TradingView Desktop Beta"
  desc "Desktop client for TradingView"
  homepage "https://www.tradingview.com/desktop/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/(\d+(?:\.\d+)*-beta\.\d+)/win32/x64/TradingView\.dmg}i)
  end

  app "TradingView.app"

  zap trash: [
    "~/Library/Application Support/TradingView",
    "~/Library/Preferences/com.tradingview.tradingviewapp.desktop.plist",
    "~/Library/Saved Application State/com.tradingview.tradingviewapp.desktop.savedState",
  ]
end
