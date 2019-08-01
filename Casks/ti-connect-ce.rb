cask 'ti-connect-ce' do
  version '5.3.5.924'
  sha256 'fa4f5c6ffd22e90a6da8ec93a25a8fd9415e3c96ce6683e4de3118827a3ba24c'

  url "https://education.ti.com/download/en/ed-tech/68CEDD34FDC94622B4DBD173E6A0D8C3/1C8292E230F145668933805CD9149505/TIConnectCE-#{version}.dmg"
  appcast 'https://education.ti.com/en/software/details/en/68CEDD34FDC94622B4DBD173E6A0D8C3/swticonnectcesoftwareformacintosh'
  name 'TI Connect™ CE'
  homepage 'https://education.ti.com/en/products/computer-software/ti-connect-ce-sw'

  app 'TI Connect CE.app'

  zap trash: [
               '~/Library/Logs/Texas Instruments/TI Connect CE',
               '~/Library/Preferences/com.ti.et.elg.tiConnect.TIConnectApplication.plist',
               '~/Library/Saved Application State/com.ti.et.elg.tiConnect.TIConnectApplication.savedState',
             ]
end
