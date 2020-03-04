cask 'wasabi-wallet' do
  version '1.1.10.3'
  sha256 '8a8502c3d6be9f9686e4344cfed6bb1c1fd92a3837b74dbe883696c56e0c4f19'

  # github.com/zkSNACKs/WalletWasabi was verified as official when first introduced to the cask
  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}.dmg"
  appcast 'https://github.com/zkSNACKs/WalletWasabi/releases.atom'
  name 'Wasabi Wallet'
  homepage 'https://www.wasabiwallet.io/'

  depends_on macos: '>= :sierra'

  app 'Wasabi Wallet.app'
end
