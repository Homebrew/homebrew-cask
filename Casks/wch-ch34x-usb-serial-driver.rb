cask :v1 => 'wch-ch34x-usb-serial-driver' do
  version '1.1'
  sha256 'e2d9e46d3b09be09341fad017e0679988bcf0495dbeef933d1e1f4a33715c09b'

  url 'http://www.wch.cn/downfile/178'
  name 'Wch USB serial driver for CH340/CH341'
  homepage 'http://www.wch.cn/download/CH341SER_MAC_ZIP.html'
  license :gratis

  container :type => :zip,
            :nested => 'CH341SER_MAC/ch34xInstall.pkg'
  pkg 'CH341SER_MAC/ch34xInstall.pkg'

  uninstall :pkgutil => 'com.wch.ch34xinstall.usb.pkg'
end
