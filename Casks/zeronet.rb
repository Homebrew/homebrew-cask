cask 'zeronet' do
  version :latest
  sha256 :no_check

  # github.com/HelloZeroNet/ZeroNet-mac was verified as official when first introduced to the cask
  url 'https://github.com/HelloZeroNet/ZeroNet-mac/archive/dist/ZeroNet-mac.zip'
  name 'ZeroNet'
  homepage 'https://zeronet.io/'

  app 'ZeroNet-mac-dist/ZeroNet.app'
end
