cask 'wasabi-wallet' do
  version '1.1.6'
  sha256 '6dd5dc9951c72a0c1dcfa68efc3d062248bd638828b470581caaab9e24438fd5'

  # github.com/zkSNACKs/WalletWasabi was verified as official when first introduced to the cask
  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}.dmg"
  appcast 'https://github.com/zkSNACKs/WalletWasabi/releases.atom'
  name 'Wasabi Wallet'
  homepage 'https://www.wasabiwallet.io/'

  depends_on macos: '>= :sierra'

  app 'Wasabi Wallet.app'
end
