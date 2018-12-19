cask 'wanwallet' do
  version '2.1.2'
  sha256 'd260cecc85ee72cf1c802f996bb5e5387fabe509c25c01186364146d9211d165'

  url "https://wanchain.org/download/macwallet#{version.major}"
  appcast 'https://github.com/wanchain/wanwallet/releases.atom'
  name 'Wanchain Wallet GUI'
  homepage 'https://wanchain.org/'

  app 'WanWalletGui.app'
end
