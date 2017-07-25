cask 'zeronet' do
  version '0.5.7'
  sha256 'beac83a1299415a90d58b680c0f466337d527337d9214b96e188fcc8ce733d8f'

  # github.com/HelloZeroNet/ZeroNet-mac was verified as official when first introduced to the cask
  url 'https://github.com/HelloZeroNet/ZeroNet-mac/archive/dist/ZeroNet-mac.zip'
  name 'ZeroNet'
  homepage 'https://zeronet.io/'

  app 'ZeroNet-mac-dist/ZeroNet.app'
end
