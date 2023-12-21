cask "wch-ch34x-usb-serial-driver" do
  version "1.8"
  sha256 :no_check

  url "https://www.wch.cn/downloads/file/369.html"
  name "WCH USB serial driver for CH340/CH341/CH342/CH343/CH344/CH9101/CH9102/CH9103/CH9143"
  desc "USB serial driver"
  homepage "https://www.wch.cn/download/CH34XSER_MAC_ZIP.html"

  livecheck do
    url :homepage
    regex(%r{<td>(\d+(?:\.\d+)+)</td>}i)
  end

  pkg "CH341SER_MAC/CH34xVCPDriver.pkg"

  uninstall quit:    "cn.wch.CH34xVCPDriver",
            kext:    [
              "cn.wch.CH34xVCPDriver",
              "cn.wch.CH34xVCPControlDriver",
            ],
            pkgutil: "cn.wch.pkg.CH34xVCPDriver"

  caveats do
    reboot
  end
end
