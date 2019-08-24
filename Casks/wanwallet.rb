cask 'wanwallet' do
  version '3.0.27'
  sha256 'e43eb7880f7221b879915de8639c142fdc9fa08f38ca7d81a70247f6d73a47b7'

  url "https://www.wanchain.org/wanwallet/desktop/WanWalletGui-mac-#{version}.zip"
  appcast 'https://www.wanchain.org/getstarted/'
  name 'Wanchain Wallet GUI'
  homepage 'https://wanchain.org/'

  app 'WanWalletGui.app'
end
