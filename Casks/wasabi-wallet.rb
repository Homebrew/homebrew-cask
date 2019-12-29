cask 'wasabi-wallet' do
  version '1.1.10.2'
  sha256 'ce5f2dc33745b50ccd516b56618fa615b7ecae7d70b3877b43ecb2f67ae73065'

  # github.com/zkSNACKs/WalletWasabi was verified as official when first introduced to the cask
  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}.dmg"
  appcast 'https://github.com/zkSNACKs/WalletWasabi/releases.atom'
  name 'Wasabi Wallet'
  homepage 'https://www.wasabiwallet.io/'

  depends_on macos: '>= :sierra'

  app 'Wasabi Wallet.app'
end
