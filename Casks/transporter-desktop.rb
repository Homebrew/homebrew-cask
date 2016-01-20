cask 'transporter-desktop' do
  version '4.2.3_20317'
  sha256 '457c53318f95ae2c645a9ce60302622ac3a863e288bdf79e645701eb91df01f0'

  # connecteddata.com is the official download host per the vendor homepage
  url "https://secure.connecteddata.com/mac/2.5/software/Transporter_Desktop_#{version}.dmg"
  appcast 'http://appsoftware.connecteddata.com/mac/2.5/Appcast.xml',
          checkpoint: '23ec86d50b2c47035e1916106a88eb07a0206d5b0d9e9fc1fead8882ce641543'
  name 'Transporter Desktop'
  homepage 'http://www.filetransporter.com/'
  license :commercial

  app 'Transporter Desktop.app'
end
