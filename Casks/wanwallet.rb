cask 'wanwallet' do
  version '3.0.28'
  sha256 'fff3b5f241f137f4600fd80980083ebe45685d44b35d4aeba7a1d7560d900ea6'

  url "https://www.wanchain.org/wanwallet/desktop/WanWalletGui-mac-#{version}.zip"
  appcast 'https://www.wanchain.org/getstarted/'
  name 'Wanchain Wallet GUI'
  homepage 'https://wanchain.org/'

  app 'WanWalletGui.app'
end
