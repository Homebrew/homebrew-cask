cask :v1 => 'transporter-desktop' do
  version '3.0.15_16791'
  sha256 'a30e41afe1be4c0a3b10b2a61a059aee36da173d021ea25e3d73ba3a39d85d25'

  url "https://secure.connecteddata.com/mac/2.5/software/Transporter_Desktop_#{version}.dmg"
  homepage 'http://www.filetransporter.com/'
  license :unknown

  app 'Transporter Desktop.app'
end
