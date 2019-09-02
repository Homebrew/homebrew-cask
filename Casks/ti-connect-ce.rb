cask 'ti-connect-ce' do
  version '5.4.0.1181,6E275F86CC13415BB657A9999AF403F2'
  sha256 'c29d64c78f1f2dc0d7586841fc9767d7a1400098fb982366d3f86672d2877603'

  url "https://education.ti.com/download/en/ed-tech/68CEDD34FDC94622B4DBD173E6A0D8C3/#{version.after_comma}/TIConnectCE-#{version.before_comma}.dmg"
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
