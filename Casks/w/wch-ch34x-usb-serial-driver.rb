cask "wch-ch34x-usb-serial-driver" do
  version "2.0"
  sha256 :no_check

  url "https://file.wch.cn/download/file?id=369"
  name "WCH USB serial driver for CH340/CH341/CH342/CH343/CH344/CH9101/CH9102/CH9103/CH9143"
  desc "USB serial driver"
  homepage "https://www.wch.cn/downloads/CH34XSER_MAC_ZIP.html"

  livecheck do
    url "https://www.wch.cn/api/official/website/common/relationFiles?fileName=CH34XSER_MAC_ZIP.html"
    strategy :json do |json|
      json.dig("data", "version")
    end
  end

  pkg "CH341SER_MAC/CH34xVCPDriver.pkg"

  uninstall quit:    "cn.wch.CH34xVCPDriver",
            kext:    [
              "cn.wch.CH34xVCPControlDriver",
              "cn.wch.CH34xVCPDriver",
            ],
            pkgutil: "cn.wch.pkg.CH34xVCPDriver"

  zap trash: [
    "~/Library/Application Scripts/cn.wch.CH34xVCPDriver",
    "~/Library/Containers/cn.wch.CH34xVCPDriver",
  ]

  caveats do
    reboot
    requires_rosetta
  end
end
