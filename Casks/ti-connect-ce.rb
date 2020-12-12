cask "ti-connect-ce" do
  version "5.6.0.2082,53A0FBD756C04C2A9B67856A0966CD82"
  sha256 "f9fc77fbd4df8bc9bfcfdb66b9cbf2692ec3cee3839e7b2202414c8e5595ba64"

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
