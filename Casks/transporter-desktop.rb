cask 'transporter-desktop' do
  version '4.2.3_20317'
  sha256 '457c53318f95ae2c645a9ce60302622ac3a863e288bdf79e645701eb91df01f0'

  # connecteddata.com is the official download host per the vendor homepage
  url "https://secure.connecteddata.com/mac/2.5/software/Transporter_Desktop_#{version}.dmg"
  appcast 'http://appsoftware.connecteddata.com/mac/2.5/Appcast.xml',
          :sha256 => '7e99edbf05a6ee2d4fd9db9c30d2bb5e26b1f4b59f99e55484ef19f924ea48a1'
  name 'Transporter Desktop'
  homepage 'http://www.filetransporter.com/'
  license :commercial

  app 'Transporter Desktop.app'
end
