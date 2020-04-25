cask 'wasabi-wallet' do
  version '1.1.11.1'
  sha256 'c91d55efd49d109d3360b2047ba9b5302e1505ebee418deaae88e6d1b564c49e'

  # github.com/zkSNACKs/WalletWasabi/ was verified as official when first introduced to the cask
  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}.dmg"
  appcast 'https://github.com/zkSNACKs/WalletWasabi/releases.atom'
  name 'Wasabi Wallet'
  homepage 'https://www.wasabiwallet.io/'

  depends_on macos: '>= :sierra'

  app 'Wasabi Wallet.app'
end
