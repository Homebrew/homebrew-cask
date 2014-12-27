cask :v1 => 'wch-ch34x-usb-serial-driver' do
  version '1.1'
  sha256 'e2d9e46d3b09be09341fad017e0679988bcf0495dbeef933d1e1f4a33715c09b'

  url 'http://www.wch.cn/downloads/downfile.php?id=178'
  name 'Wch USB serial driver for CH340/CH341'
  homepage 'http://www.wch.cn/downloads.php?name=pro&proid=178'
  license :unknown

  container :type => :zip,
            :nested => 'CH341SER_MAC/ch34xInstall.pkg'
  pkg 'CH341SER_MAC/ch34xInstall.pkg'
  uninstall :pkgutil => 'com.wch.ch34xinstall.usb.pkg'
end
