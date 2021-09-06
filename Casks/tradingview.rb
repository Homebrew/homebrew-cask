cask "tradingview" do
  version "1.0.0-beta.9"
  sha256 "b1a1293795b74672f447184e20f0d42504a60304c78b05622d6486af7900ab28"

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
