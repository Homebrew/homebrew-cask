cask "ti-connect-ce" do
  version "5.6.3.2278,9A6A30E6D3004AA1A208CE7816433439"
  sha256 "c85632f0bfbdedc2127d018cd770fb647acfd58c89641a14d96e5adb6c8e7960"

  url "https://education.ti.com/download/en/ed-tech/68CEDD34FDC94622B4DBD173E6A0D8C3/#{version.after_comma}/TIConnectCE-#{version.before_comma}.dmg"
  appcast "https://education.ti.com/en/software/details/en/68CEDD34FDC94622B4DBD173E6A0D8C3/swticonnectcesoftwareformacintosh"
  name "TI Connect™ CE"
  homepage "https://education.ti.com/en/products/computer-software/ti-connect-ce-sw"

  app "TI Connect CE.app"

  zap trash: [
    "~/Library/Logs/Texas Instruments/TI Connect CE",
    "~/Library/Preferences/com.ti.et.elg.tiConnect.TIConnectApplication.plist",
    "~/Library/Saved Application State/com.ti.et.elg.tiConnect.TIConnectApplication.savedState",
  ]
end
