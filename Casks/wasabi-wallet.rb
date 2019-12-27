cask 'wasabi-wallet' do
  version '1.1.10.1'
  sha256 '4c7898daa7ffec5f79e0860fd7339778243abe689113d31defa623ac9fbb3e2d'

  # github.com/zkSNACKs/WalletWasabi was verified as official when first introduced to the cask
  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}.dmg"
  appcast 'https://github.com/zkSNACKs/WalletWasabi/releases.atom'
  name 'Wasabi Wallet'
  homepage 'https://www.wasabiwallet.io/'

  depends_on macos: '>= :sierra'

  app 'Wasabi Wallet.app'
end
