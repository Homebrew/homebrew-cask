cask 'xfer-ott' do
  version :latest
  sha256 :no_check

  url 'https://xferrecords.com/product_downloads/24/freeware'
  name 'OTT'
  homepage 'https://xferrecords.com/freeware'

  pkg 'Install_Xfer_OTT.pkg'

  uninstall pkgutil: 'com.xfer.OTT.*'
end
