cask 'wasabi-wallet' do
  version '1.1.11'
  sha256 '5c3ff915d734d0576ced43fcce5b2898a1ccc6ba1f309b70b121de5f2f3abf26'

  # github.com/zkSNACKs/WalletWasabi/ was verified as official when first introduced to the cask
  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}.dmg"
  appcast 'https://github.com/zkSNACKs/WalletWasabi/releases.atom'
  name 'Wasabi Wallet'
  homepage 'https://www.wasabiwallet.io/'

  depends_on macos: '>= :sierra'

  app 'Wasabi Wallet.app'
end
