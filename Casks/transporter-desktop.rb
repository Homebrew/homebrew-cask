cask :v1 => 'transporter-desktop' do
  version '3.1.36_19350'
  sha256 '9e7ca3136f323c473ac548ea9908c8769c927734749d9bcaca5332ce7f000400'

  # connecteddata.com is the official download host per the vendor homepage
  url "https://secure.connecteddata.com/mac/2.5/software/Transporter_Desktop_#{version}.dmg"
  name 'Transporter Desktop'
  appcast 'http://appsoftware.connecteddata.com/mac/2.5/Appcast.xml',
          :sha256 => 'e3ab545795691139e7d6062c747a707c6e1db3a1c6a0ab11c4de8caed249e23d'
  homepage 'http://www.filetransporter.com/'
  license :commercial

  app 'Transporter Desktop.app'
end
