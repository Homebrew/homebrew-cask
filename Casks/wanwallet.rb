cask 'wanwallet' do
  version '3.0.26'
  sha256 '88c3ad99eb9126ae6045c96c10cc20d7043f09c7419f4d66eebba27adba0315f'

  url "https://wanchain.org/download/macwallet#{version.major}"
  appcast 'https://github.com/wanchain/wanwallet/releases.atom'
  name 'Wanchain Wallet GUI'
  homepage 'https://wanchain.org/'

  app 'WanWalletGui.app'
end
