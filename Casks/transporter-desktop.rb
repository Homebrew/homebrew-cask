cask :v1 => 'transporter-desktop' do
  version '3.1.17_18519'
  sha256 'c62adff9e27ebdc424d7fb01b02d5d5ba06a53305c7f6d65ecde790bb487a95e'

  # connecteddata.com is the official download host per the vendor homepage
  url "https://secure.connecteddata.com/mac/2.5/software/Transporter_Desktop_#{version}.dmg"
  homepage 'http://www.filetransporter.com/'
  license :commercial

  app 'Transporter Desktop.app'
end
