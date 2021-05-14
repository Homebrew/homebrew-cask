cask "tradingview" do
  version "1.0.0-beta.3"
  sha256 "4223b41a138e2904383f9970d2a4289db933365183ffd30f901b83e1b7a659ed"

  url "https://tvd-packages.tradingview.com/stable/#{version}/darwin/x64/TradingView.dmg"
  name "TradingView Desktop"
  desc "Experience with the power and flexibility of a desktop application"
  homepage "https://www.tradingview.com/desktop/"

  livecheck do
    url "https://tvd-packages.tradingview.com/stable/latest/darwin/x64/stable-mac.yml"
    strategy :electron_builder
  end

  app "TradingView.app"

  zap trash: [
    "~/Library/Application Support/TradingView",
    "~/Library/Preferences/com.tradingview.tradingviewapp.desktop.plist",
    "~/Library/Saved Application State/com.tradingview.tradingviewapp.desktop.savedState",
  ]
end
