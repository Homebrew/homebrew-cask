cask 'wasabi-wallet' do
  version '1.1.12'
  sha256 '38f6c55e928494d669b1e5def5470c2c701ca16900e19e763b5f7aa9673485a6'

  # github.com/zkSNACKs/WalletWasabi/ was verified as official when first introduced to the cask
  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}.dmg"
  appcast 'https://github.com/zkSNACKs/WalletWasabi/releases.atom'
  name 'Wasabi Wallet'
  homepage 'https://www.wasabiwallet.io/'

  depends_on macos: '>= :sierra'

  app 'Wasabi Wallet.app'
end
