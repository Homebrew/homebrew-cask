cask :v1 => 'transporter-desktop' do
  version '4.1.5_20060'
  sha256 '98111e1178f1db00b6b6cf395b78256c3f681151e6f07a70d4497250da0ca238'

  # connecteddata.com is the official download host per the vendor homepage
  url "https://secure.connecteddata.com/mac/2.5/software/Transporter_Desktop_#{version}.dmg"
  name 'Transporter Desktop'
  appcast 'http://appsoftware.connecteddata.com/mac/2.5/Appcast.xml',
          :sha256 => 'e3ab545795691139e7d6062c747a707c6e1db3a1c6a0ab11c4de8caed249e23d'
  homepage 'http://www.filetransporter.com/'
  license :commercial

  app 'Transporter Desktop.app'
end
