cask 'zencash-wallet' do
  version '0.73.4'
  sha256 '148152571ca14fa054742918dfae0be76875cf74658221b00fe23cf712db1ae4'

  url "https://github.com/ZencashOfficial/zencash-swing-wallet-ui/releases/download/#{version}/ZENCashWallet-#{version}.dmg"
  appcast 'https://github.com/ZencashOfficial/zencash-swing-wallet-ui/releases.atom',
          checkpoint: '0c199028cb013472ff4ddf1f75129e2fc7fed45bbc92e1e29b5c7a19f58e1155'
  name 'ZENCash Wallet'
  homepage 'https://github.com/ZencashOfficial/zencash-swing-wallet-ui'

  app 'ZENCashWallet.app'
end
