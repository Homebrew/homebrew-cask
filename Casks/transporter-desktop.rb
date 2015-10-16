cask :v1 => 'transporter-desktop' do
  version '4.0.8_19845'
  sha256 '9d8d0606286a4baa1a3fc4df4bad64e879cb434766f6d4466c0d3a8ec89020f5'

  # connecteddata.com is the official download host per the vendor homepage
  url "https://secure.connecteddata.com/mac/2.5/software/Transporter_Desktop_#{version}.dmg"
  name 'Transporter Desktop'
  appcast 'http://appsoftware.connecteddata.com/mac/2.5/Appcast.xml',
          :sha256 => 'e3ab545795691139e7d6062c747a707c6e1db3a1c6a0ab11c4de8caed249e23d'
  homepage 'http://www.filetransporter.com/'
  license :commercial

  app 'Transporter Desktop.app'
end
