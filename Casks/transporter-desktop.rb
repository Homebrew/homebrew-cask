cask :v1 => 'transporter-desktop' do
  version '2.8.1_16078'
  sha256 '43d0f47993d233fee6209b040b77f42e1b909cfedcbe873b7fb4700782af4c75'

  url "https://secure.connecteddata.com/mac/2.5/software/Transporter_Desktop_#{version}.dmg"
  homepage 'http://www.filetransporter.com/'
  license :unknown

  app 'Transporter Desktop.app'
end
