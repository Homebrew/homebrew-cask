cask "tradingview" do
  version "1.0.0-beta.14"
  sha256 "05cc862a8a17ecb09d2ff2a4be27de3c1c011f10ca3500480f06ab01413fd3b4"

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
