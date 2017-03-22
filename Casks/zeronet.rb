cask 'zeronet' do
  version :latest
  sha256 :no_check

  # github.com/HelloZeroNet/ZeroBundle was verified as official when first introduced to the cask
  url 'https://github.com/HelloZeroNet/ZeroBundle/raw/master/dist/ZeroBundle-mac-osx.zip'
  name 'ZeroNet'
  homepage 'https://zeronet.io/'

  suite 'ZeroBundle'
end
