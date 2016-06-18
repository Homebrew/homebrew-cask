cask 'zeronet' do
  version :latest
  sha256 :no_check

  # zeronet.io and https://github.com/HelloZeroNet/ZeroBundle were verified as official when first introduced to the cask
  url 'https://github.com/HelloZeroNet/ZeroBundle/raw/master/dist/ZeroBundle-mac-osx.zip'
  name 'ZeroNet ZeroBundle'
  homepage 'https://zeronet.io/'
  license :gpl # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  suite 'ZeroBundle'
end
