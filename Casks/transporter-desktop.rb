cask :v1 => 'transporter-desktop' do
  version '3.1.28_18973'
  sha256 '48dfd52e287073e277711160dc3f4eab16d521994717aecb36539fdb6ff8befe'

  # connecteddata.com is the official download host per the vendor homepage
  url "https://secure.connecteddata.com/mac/2.5/software/Transporter_Desktop_#{version}.dmg"
  name 'Transporter Desktop'
  appcast 'http://appsoftware.connecteddata.com/mac/2.5/Appcast.xml',
          :sha256 => '7b36fe42eab19068fe4d1e8bbb0efd4d02d7be8d1440d367bf2118c11ccbff3d'
  homepage 'http://www.filetransporter.com/'
  license :commercial

  app 'Transporter Desktop.app'
end
