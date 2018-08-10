cask 'wanwallet' do
  version :latest
  sha256 :no_check

  url 'https://wanchain.org/download/macwallet2'
  name 'Wanchain Wallet GUI'
  homepage 'https://wanchain.org/'

  app 'WanWalletGui.app'
end
