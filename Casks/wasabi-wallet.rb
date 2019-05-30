cask 'wasabi-wallet' do
  version '1.1.5'
  sha256 '35677bbbd97b35fb8fe56e8396ac54447e3fa9a62d49fe5bbcef56d07c347fbe'

  # github.com/zkSNACKs/WalletWasabi was verified as official when first introduced to the cask
  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}.dmg"
  appcast 'https://github.com/zkSNACKs/WalletWasabi/releases.atom'
  name 'Wasabi Wallet'
  homepage 'https://www.wasabiwallet.io/'

  depends_on macos: '>= :sierra'

  app 'Wasabi Wallet.app'
end
